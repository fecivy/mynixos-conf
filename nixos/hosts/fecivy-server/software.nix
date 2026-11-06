{ pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        hexo-cli
        (pkgs.llama-cpp.override { cudaSupport = true; })
        (blender.override { cudaSupport = true; })
        (whisper-cpp.override { cudaSupport = true; })
        (stable-diffusion-cpp.override { cudaSupport = true; })
    ];
}
