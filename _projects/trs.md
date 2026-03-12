---
layout: page
title: Trust-Region Noise Search (TRS)
description: Black-box alignment for diffusion and flow models. Accepted @ ReALM-GEN Workshop, ICLR 2026.
img: assets/img/Teaser_Figure.jpg
importance: 2
category: research
---

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/img/Teaser_Figure.jpg" title="TRS Teaser" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    TRS allows for reward-agnostic alignment across diverse domains including image generation, molecule design, and protein engineering.
</div>

## Abstract
Aligning generative models (like Diffusion or Flow models) with specific user preferences often requires differentiable reward functions or expensive fine-tuning. We propose **Trust-Region Noise Search (TRS)**, a simple yet effective black-box alignment algorithm. 

TRS treats the generative model and the reward function as completely opaque. Instead of updating model weights, it optimizes the source noise (the latent space) using a trust-region search. This makes it applicable to non-differentiable rewards and avoids the catastrophic forgetting associated with full fine-tuning.

## Key Methodology
The core idea of TRS is to iteratively explore the noise space $\mathbb{R}^M$ to find regions that map to samples with higher rewards.

<div class="row justify-content-sm-center">
    <div class="col-sm-10 mt-3 mt-md-0">
        {% include figure.liquid path="assets/img/trs_method Kopie.jpg" title="TRS Methodology" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    The TRS pipeline: (a) Mapping noise to data manifold, (b) Generating new candidates, (c) Perturbation strategy, and (d) Dynamic trust-region updates.
</div>

## Impact
Our results demonstrate that TRS can steering models towards high-aesthetic scores in text-to-image tasks and optimal docking scores in molecule design—all without ever calculating a single gradient through the generative model itself.

- **Status**: Accepted @ [ReALM-GEN Workshop @ ICLR 2026](https://realm-gen-workshop.github.io/) (Rio de Janeiro)
- **Collaborators**: K. Ram, Prof. Daniel Cremers
- **Focus**: High-efficiency alignment, non-differentiable rewards, black-box optimization.
