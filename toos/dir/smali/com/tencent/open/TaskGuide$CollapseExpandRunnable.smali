.class Lcom/tencent/open/TaskGuide$CollapseExpandRunnable;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field expand:Z

.field index:F

.field final synthetic this$0:Lcom/tencent/open/TaskGuide;


# direct methods
.method public constructor <init>(Lcom/tencent/open/TaskGuide;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 517
    iput-object p1, p0, Lcom/tencent/open/TaskGuide$CollapseExpandRunnable;->this$0:Lcom/tencent/open/TaskGuide;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 515
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/open/TaskGuide$CollapseExpandRunnable;->expand:Z

    .line 521
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/open/TaskGuide$CollapseExpandRunnable;->index:F

    .line 518
    iput-boolean p2, p0, Lcom/tencent/open/TaskGuide$CollapseExpandRunnable;->expand:Z

    .line 519
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/high16 v0, 0x3f80

    .line 525
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    .line 526
    iget v2, p0, Lcom/tencent/open/TaskGuide$CollapseExpandRunnable;->index:F

    float-to-double v2, v2

    const-wide v4, 0x3fb999999999999aL

    add-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Lcom/tencent/open/TaskGuide$CollapseExpandRunnable;->index:F

    .line 528
    iget v2, p0, Lcom/tencent/open/TaskGuide$CollapseExpandRunnable;->index:F

    .line 529
    cmpl-float v3, v2, v0

    if-lez v3, :cond_0

    move v2, v0

    .line 532
    :cond_0
    cmpl-float v0, v2, v0

    if-ltz v0, :cond_1

    move v0, v1

    .line 536
    :goto_0
    iget-object v3, p0, Lcom/tencent/open/TaskGuide$CollapseExpandRunnable;->this$0:Lcom/tencent/open/TaskGuide;

    #getter for: Lcom/tencent/open/TaskGuide;->mInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v3}, Lcom/tencent/open/TaskGuide;->access$2600(Lcom/tencent/open/TaskGuide;)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    iget-object v3, p0, Lcom/tencent/open/TaskGuide$CollapseExpandRunnable;->this$0:Lcom/tencent/open/TaskGuide;

    #getter for: Lcom/tencent/open/TaskGuide;->mAnimationLength:I
    invoke-static {v3}, Lcom/tencent/open/TaskGuide;->access$2700(Lcom/tencent/open/TaskGuide;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 537
    iget-boolean v3, p0, Lcom/tencent/open/TaskGuide$CollapseExpandRunnable;->expand:Z

    if-eqz v3, :cond_2

    .line 538
    iget-object v3, p0, Lcom/tencent/open/TaskGuide$CollapseExpandRunnable;->this$0:Lcom/tencent/open/TaskGuide;

    #getter for: Lcom/tencent/open/TaskGuide;->mWinParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v3}, Lcom/tencent/open/TaskGuide;->access$1000(Lcom/tencent/open/TaskGuide;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/open/TaskGuide$CollapseExpandRunnable;->this$0:Lcom/tencent/open/TaskGuide;

    #getter for: Lcom/tencent/open/TaskGuide;->mStartY:I
    invoke-static {v4}, Lcom/tencent/open/TaskGuide;->access$2800(Lcom/tencent/open/TaskGuide;)I

    move-result v4

    add-int/2addr v4, v2

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 542
    :goto_1
    const-string v3, "TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mWinParams.y = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/open/TaskGuide$CollapseExpandRunnable;->this$0:Lcom/tencent/open/TaskGuide;

    #getter for: Lcom/tencent/open/TaskGuide;->mWinParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v5}, Lcom/tencent/open/TaskGuide;->access$1000(Lcom/tencent/open/TaskGuide;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "deltaDistence = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v2, p0, Lcom/tencent/open/TaskGuide$CollapseExpandRunnable;->this$0:Lcom/tencent/open/TaskGuide;

    #getter for: Lcom/tencent/open/TaskGuide;->mAddedWindow:Z
    invoke-static {v2}, Lcom/tencent/open/TaskGuide;->access$000(Lcom/tencent/open/TaskGuide;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 550
    :goto_2
    if-eqz v1, :cond_4

    .line 551
    iget-object v0, p0, Lcom/tencent/open/TaskGuide$CollapseExpandRunnable;->this$0:Lcom/tencent/open/TaskGuide;

    #calls: Lcom/tencent/open/TaskGuide;->endAnimation()V
    invoke-static {v0}, Lcom/tencent/open/TaskGuide;->access$3000(Lcom/tencent/open/TaskGuide;)V

    .line 556
    :goto_3
    return-void

    .line 532
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 540
    :cond_2
    iget-object v3, p0, Lcom/tencent/open/TaskGuide$CollapseExpandRunnable;->this$0:Lcom/tencent/open/TaskGuide;

    #getter for: Lcom/tencent/open/TaskGuide;->mWinParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v3}, Lcom/tencent/open/TaskGuide;->access$1000(Lcom/tencent/open/TaskGuide;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/open/TaskGuide$CollapseExpandRunnable;->this$0:Lcom/tencent/open/TaskGuide;

    #getter for: Lcom/tencent/open/TaskGuide;->mStartY:I
    invoke-static {v4}, Lcom/tencent/open/TaskGuide;->access$2800(Lcom/tencent/open/TaskGuide;)I

    move-result v4

    sub-int/2addr v4, v2

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1

    .line 547
    :cond_3
    iget-object v1, p0, Lcom/tencent/open/TaskGuide$CollapseExpandRunnable;->this$0:Lcom/tencent/open/TaskGuide;

    #getter for: Lcom/tencent/open/TaskGuide;->wm:Landroid/view/WindowManager;
    invoke-static {v1}, Lcom/tencent/open/TaskGuide;->access$2900(Lcom/tencent/open/TaskGuide;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/open/TaskGuide$CollapseExpandRunnable;->this$0:Lcom/tencent/open/TaskGuide;

    #getter for: Lcom/tencent/open/TaskGuide;->mContentView:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/tencent/open/TaskGuide;->access$100(Lcom/tencent/open/TaskGuide;)Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/open/TaskGuide$CollapseExpandRunnable;->this$0:Lcom/tencent/open/TaskGuide;

    #getter for: Lcom/tencent/open/TaskGuide;->mWinParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v3}, Lcom/tencent/open/TaskGuide;->access$1000(Lcom/tencent/open/TaskGuide;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v1, v0

    goto :goto_2

    .line 553
    :cond_4
    iget-object v0, p0, Lcom/tencent/open/TaskGuide$CollapseExpandRunnable;->this$0:Lcom/tencent/open/TaskGuide;

    #getter for: Lcom/tencent/open/TaskGuide;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/open/TaskGuide;->access$3200(Lcom/tencent/open/TaskGuide;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/open/TaskGuide$CollapseExpandRunnable;->this$0:Lcom/tencent/open/TaskGuide;

    #getter for: Lcom/tencent/open/TaskGuide;->clRunnalbe:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/tencent/open/TaskGuide;->access$3100(Lcom/tencent/open/TaskGuide;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3
.end method
