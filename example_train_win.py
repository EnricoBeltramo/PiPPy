import torch.distributed as dist
import torch.multiprocessing as mp


def f(rank, world_size):
    dist.init_process_group(
        "gloo", init_method="tcp://localhost:12988", rank=rank, world_size=world_size # <--- this line
    )


if __name__ == "__main__":
    world_size = 2

    context = mp.spawn(f, args=(world_size,), nprocs=world_size, join=False)
    context.join()