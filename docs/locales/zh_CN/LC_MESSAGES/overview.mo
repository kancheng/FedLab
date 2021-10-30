��          �               l  �   m  �   P  �        �     �     �  .  �  1        L     Y     l     y     �  
   �  �   �  c  +  Q  �  �   �
  �   �  �   B  w  �  �   G  �     �   �     �     �     �  �  �  -   u     �     �     �     �     �     �  �   �  H  |  -  �  �   �  p   �  i      **FedLab** also contains data partition scripts from LEAF :cite:p:`caldas2018leaf`, and implementations of some FL algorithms, like FedAvg :cite:p:`mcmahan2017communication`. More benchmarks and FL algorithms demos are coming. **FedLab** provides two basic roles in FL setting: ``Server`` and ``Client``. Each ``Server``/``Client`` consists of two components called ``NetworkManager`` and ``ParameterHandler``/``Trainer``. Asynchronous FL :cite:p:`xie2019asynchronous`: each round is launched by clients, that is, clients request current global model parameters then perform local training. Communication Cross-Machine Experimental Scene Federated learning (FL), proposed by Google at the very beginning, is recently a burgeoning research area of machine learning, which aims to protect individual data privacy in distributed machine learning process, especially in finance, smart healthcare and edge computing. Different from traditional data-centered distributed machine learning, participants in FL setting utilize localized data to train local model, then leverages specific strategies with other participants to acquire the final model collaboratively, avoiding direct data sharing behavior. For more details, please read our `full paper`__. Hierarchical How to use FedLab? Introduction Overview Overview of FedLab Standalone Synchronous FL: each round is launched by server, that is, server performs clients sampling first then broadcasts global model parameters. The connection between ``NetworkManager`` and ``ParameterServerHandler`` in ``Server`` is shown as below. ``NetworkManager`` processes message and calls ``ParameterServerHandler.on_receive()`` method, while ``ParameterServerHandler`` performs training as well as computation process of server (model aggregation for example), and updates the global model. To relieve the burden of researchers in implementing FL algorithms and emancipate FL scientists from repetitive implementation of basic FL setting, we introduce highly customizable framework **FedLab** in this work. **FedLab** provides the necessary modules for FL simulation, including communication, compression, model optimization, data partition and other functional modules. **FedLab** users can build FL simulation environment with custom modules like playing with LEGO bricks. For better understanding and easy usage, FL algorithm benchmark implemented in **FedLab** are also presented. ``Client`` shares similar design and structure with ``Server``, with ``NetworkManager`` in charge of message processing as well as network communication with server, and `Trainer` for client local training procedure. ``NetworkManager`` module manages message process task, which provides interfaces to customize communication agreements and compression ``ParameterHandler`` is responsible for backend computation in ``Server``; and ``Trainer`` is in charge of backend computation in ``Client`` Project-Id-Version: FedLab 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-10-30 17:11+0800
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_CN
Language-Team: zh_CN <LL@li.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.0
 **FedLab** 还提供了数据划分需要的函数以及划分器，以及一些联邦学习算法的实现，如FedAvg :cite:p:`mcmahan2017communication`。更多的benchmark和联邦学习算法demo即将出现。 FedLab提供了联邦学习中的两种基本角色：``Server`` 和 ``Client``。每个 ``Server``/``Client`` 包含两个部件，分别是 ``NetworkManager`` 和 ``ParameterHandler``/``Trainer``。 异步联邦 :cite:p:`xie2019asynchronous`：每一轮由client开启，即，client向server请求传输全局模型参数，然后再执行本地训练。 通信 跨机 实验场景 联邦学习最早由Google提出，是近几年一个新兴的机器学习研究领域。联邦学习旨在在分布式机器学习过程中保护个人数据隐私，尤其是金融、智能医疗以及边缘计算方面。不同于传统的存在数据中心的分布式机器学习，联邦学习中的参与者利用本地数据训练本地模型，然后利用特定策略与其他参与者协作得到最终模型，从而避免了直接分享数据的行为。 更多细节请参考我们的 `full paper`__ 分层架构 如何使用FedLab？ 引言 概述 FedLab概述 单机（单进程） 同步联邦：每一轮训练由server开启，即，server先随机选择client，然后将全局模型广播给选中的client。 ``Server`` 中的 ``NetworkManager`` 和 ``ParameterServerHandler`` 的关系如下图所示。``NetworkManager`` 处理消息并调用 ``ParameterServerHandler.on_receive()`` 方法，而 ``ParameterServerHandler`` 用于执行server上具体的计算以及模型训练过程（比如模型聚合）,和全局模型的更新。 为了减轻研究者们在实现联邦学习算法的负担，减少联邦学习实现中的重复性工作，我们向大家介绍可高度自定义的联邦学习框架 **FedLab**。FedLab提供了联邦学习模拟需要的模块，包括通信模块、压缩模块、模型优化模块、数据划分模块，以及其他功能性模块。用户可以像玩乐高积木一样用不同的自定义模块来搭建联邦学习模拟环境。为了用户更好地理解和更简便的使用，我们还提供了用FedLab实现的联邦学习算法基准。 ``Client`` 的设计与结构和 ``Server`` 非常相似，即 ``NetworkManager`` 负责消息处理以及和server的网络通信，``Trainer`` 负责client的本地训练过程。 ``NetworkManager`` 模块负责管理消息处理过程，且提供了自定义通信协议和压缩的接口。 ``ParameterHandler`` 负责 ``Server`` 的后端计算；``Trainer`` 负责 ``Client`` 的后端计算。 