#ifndef THREADGROUP_H
#define THREADGROUP_H

#include <thread>
#include <mutex>
#include <list>
#include <queue>
#include <functional>
#include <atomic>
#include <chrono>
#include <condition_variable>
#include <future>
#include <algorithm>
#include <assert.h>

class ThreadPool
{
public:
    ThreadPool(uint32_t number_of_threads_);
    ~ThreadPool();
    template<typename FuncType> void push_task(FuncType fnk);
    void push_future(std::future<bool> new_future);
    bool wait_check_futures();
    uint32_t numb_of_threads() const;
private:
    void worker_thread();
    std::queue<std::function<void()> > work_queue;
    std::queue<std::future<bool> > future_queue;
    std::vector<std::thread> threads;
    std::mutex work_queue_mute;
    std::mutex future_queue_mute;
    uint32_t number_of_threads;
    std::atomic<bool> work;
};

inline uint32_t ThreadPool::numb_of_threads() const
{
    return number_of_threads;
}

template<typename FuncType> void ThreadPool::push_task(FuncType fnk)
{
    std::lock_guard<std::mutex> lock(work_queue_mute);
    work_queue.push(std::function<void()>(fnk));
}

class ThreadGroup
{
public:
    ThreadGroup(){}
    ~ThreadGroup();

    uint32_t inline size() const {return members.size();}
    void add_member(std::thread *new_member);
    void remove_member(std::thread *member);
    void join_all();

private:
    ThreadGroup(ThreadGroup const&) = delete;
    ThreadGroup& operator = (ThreadGroup const&) = delete;

    std::list<std::thread*> members;
    std::mutex mute;
};

class ThreadInteruptor
{
public:
    ThreadInteruptor(uint32_t time_int_in_milli);
    ThreadInteruptor(ThreadInteruptor const&) = delete;
    ThreadInteruptor& operator = (ThreadInteruptor const&) = delete;

    class ThreadInterupted
    {
    public:
        ThreadInterupted(){}
    };

    void interupt();
    void reset_interupt();
    void check_interupted() const; //throw(ThreadInterupted);
    void wait_condv_check_interupt(std::condition_variable &cond_var,
                                   std::unique_lock<std::mutex> &lock) const; //throw(ThreadInterupted);
private:
    std::atomic<bool> interupt_all;
    std::chrono::duration<uint32_t,std::milli> time_intervall;
};

class ThreadBarrier
{
public:
    ThreadBarrier(uint32_t number_of_threads_);
    void wait();
    void spin_wait();

private:
    ThreadBarrier(const ThreadBarrier&) = delete;
    ThreadBarrier& operator=(const ThreadBarrier&) = delete;
    std::mutex mute;
    std::condition_variable cond_var;
    uint32_t number_of_treads;
    std::atomic<uint32_t> counter;
    std::atomic<uint32_t> actual;
};

#endif // THREADGROUP_H
