.class Lcom/tencent/open/TaskGuide$QQRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "ProGuard"


# instance fields
.field startY:I

.field final synthetic this$0:Lcom/tencent/open/TaskGuide;


# direct methods
.method public constructor <init>(Lcom/tencent/open/TaskGuide;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 448
    iput-object p1, p0, Lcom/tencent/open/TaskGuide$QQRelativeLayout;->this$0:Lcom/tencent/open/TaskGuide;

    .line 449
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 453
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/open/TaskGuide$QQRelativeLayout;->startY:I

    .line 451
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter

    .prologue
    .line 460
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 461
    const-string v1, "XXXX"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInterceptTouchEvent-- action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "currentY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v1, p0, Lcom/tencent/open/TaskGuide$QQRelativeLayout;->this$0:Lcom/tencent/open/TaskGuide;

    const/16 v2, 0xbb8

    #calls: Lcom/tencent/open/TaskGuide;->autoCollapseWindow(I)V
    invoke-static {v1, v2}, Lcom/tencent/open/TaskGuide;->access$2400(Lcom/tencent/open/TaskGuide;I)V

    .line 463
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 475
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 465
    :pswitch_0
    iput v0, p0, Lcom/tencent/open/TaskGuide$QQRelativeLayout;->startY:I

    .line 466
    const/4 v0, 0x0

    goto :goto_0

    .line 469
    :pswitch_1
    iget v1, p0, Lcom/tencent/open/TaskGuide$QQRelativeLayout;->startY:I

    sub-int v0, v1, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    .line 470
    iget-object v0, p0, Lcom/tencent/open/TaskGuide$QQRelativeLayout;->this$0:Lcom/tencent/open/TaskGuide;

    #calls: Lcom/tencent/open/TaskGuide;->collapseWindow()V
    invoke-static {v0}, Lcom/tencent/open/TaskGuide;->access$2500(Lcom/tencent/open/TaskGuide;)V

    .line 471
    const/4 v0, 0x1

    goto :goto_0

    .line 463
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter

    .prologue
    .line 483
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 485
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 486
    const-string v1, "XXXX"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onTouchEvent-----startY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tencent/open/TaskGuide$QQRelativeLayout;->startY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "currentY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 505
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 491
    :pswitch_1
    iput v0, p0, Lcom/tencent/open/TaskGuide$QQRelativeLayout;->startY:I

    goto :goto_0

    .line 497
    :pswitch_2
    iget v1, p0, Lcom/tencent/open/TaskGuide$QQRelativeLayout;->startY:I

    sub-int v0, v1, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    .line 498
    iget-object v0, p0, Lcom/tencent/open/TaskGuide$QQRelativeLayout;->this$0:Lcom/tencent/open/TaskGuide;

    #calls: Lcom/tencent/open/TaskGuide;->collapseWindow()V
    invoke-static {v0}, Lcom/tencent/open/TaskGuide;->access$2500(Lcom/tencent/open/TaskGuide;)V

    goto :goto_0

    .line 489
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
