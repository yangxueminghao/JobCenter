﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using JobCenter.DAL;
using JobCenter.Models;

namespace JobCenter.BLL
{
    public class JobBLL
    {
        private readonly JobDAL dal = new JobDAL();

        /// <summary>
        /// 获取任务列表
        /// </summary>
        /// <param name="pageIndex"></param>
        /// <param name="pageSize"></param>
        /// <returns></returns>
        public List<Job> GetTaskList(int pageIndex, int pageSize)
        {
            return dal.GetTaskList(pageIndex, pageSize);
        }

        /// <summary>
        /// 读取数据库中全部的任务
        /// </summary>
        /// <returns></returns>
        public List<Job> GetAllTaskList()
        {
            return dal.GetAllTaskList();
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="taskId"></param>
        /// <returns></returns>
        public Job GetById(string taskId)
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// 删除任务
        /// </summary>
        /// <param name="taskId"></param>
        /// <returns></returns>
        public bool DeleteById(string taskId)
        {
            return dal.UpdateTaskStatus(taskId, -1);
        }

        /// <summary>
        /// 修改任务
        /// </summary>
        /// <param name="taskId"></param>
        /// <param name="status"></param>
        /// <returns></returns>
        public bool UpdateTaskStatus(string taskId, int status)
        {
            return dal.UpdateTaskStatus(taskId, status);
        }

        /// <summary>
        /// 修改任务的下次启动时间
        /// </summary>
        /// <param name="taskId"></param>
        /// <param name="nextFireTime"></param>
        /// <returns></returns>
        public bool UpdateNextFireTime(string taskId, DateTime nextFireTime)
        {
            return dal.UpdateNextFireTime(taskId, nextFireTime);
        }

        /// <summary>
        /// 根据任务Id 修改 上次运行时间
        /// </summary>
        /// <param name="taskId"></param>
        /// <param name="recentRunTime"></param>
        /// <returns></returns>
        public bool UpdateRecentRunTime(string taskId, DateTime recentRunTime)
        {
            return dal.UpdateRecentRunTime(taskId, recentRunTime);
        }

        /// <summary>
        /// 根据任务Id 获取任务
        /// </summary>
        /// <param name="taskId"></param>
        /// <returns></returns>
        public Job GetTaskById(string taskId)
        {
            return dal.GetTaskById(taskId);
        }

        /// <summary>
        /// 添加任务
        /// </summary>
        /// <param name="task"></param>
        /// <returns></returns>
        public bool Add(Job task)
        {
            return dal.Add(task);
        }

        /// <summary>
        /// 修改任务
        /// </summary>
        /// <param name="task"></param>
        /// <returns></returns>
        public bool Edit(Job task)
        {
            return dal.Edit(task);
        }
    }
}
