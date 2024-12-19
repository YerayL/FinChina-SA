# FinChina SA
The FinChina SA dataset and code from FinLLM@IJCAI'23 paper: 

**_Chinese Fine-Grained Financial Sentiment Analysis with Large Language Models_**

<https://arxiv.org/abs/2306.14096>


## Code
First, the data needs to be processed into a conversational form like this:
```
{
    "conversations":[
        {
            "from":"human",
            "value":"question"
        },
        {
            "from":"gpt",
            "value":"answer"
        }
    ]
}
```
The code is in the src folder and you need to modify the configuration in the shell script.

#### Fine-tune
To fine-tune the model:

```
sh sft.sh
```


#### Inference
To run inference:

```
sh run_infer.sh
```

Our experiments is based on the following repo:
- [Longformer-chinese](https://github.com/SCHENLIU/longformer-chinese)
- [Chinese-LLaMA-Alpaca](https://github.com/ymcui/Chinese-LLaMA-Alpaca)
- [LLMZoo](https://github.com/FreedomIntelligence/LLMZoo)
- [ChatGLM](https://github.com/THUDM/ChatGLM-6B)
- [MedicalGPT](https://github.com/shibing624/MedicalGPT)


Thanks for their efforts to make the code and model weights public.

## Citation
If you find this project useful, please cite it using the following format

```
@article{lan2024chinese,
  title={Chinese fine-grained financial sentiment analysis with large language models},
  author={Lan, Yinyu and Wu, Yanru and Xu, Wang and Feng, Weiqiang and Zhang, Youhao},
  journal={Neural Computing and Applications},
  pages={1--10},
  year={2024},
  publisher={Springer}
}
```





