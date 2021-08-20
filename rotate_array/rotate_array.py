def rotate(nums, k):
    size = len(nums)
    start_idx = 0
    step = k % size
    idx_to_update = start_idx + step
    num_to_update = nums[start_idx]
    i = 0

    while i < size:
        if idx_to_update != start_idx:
            num_to_update, nums[idx_to_update] = nums[idx_to_update], num_to_update
            idx_to_update = (idx_to_update + step) % size
        else:
            nums[idx_to_update] = num_to_update
            start_idx = (start_idx + 1) % size
            idx_to_update = (start_idx + step) % size
            num_to_update = nums[start_idx]
        i += 1

    return nums