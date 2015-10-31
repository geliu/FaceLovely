.class public Lcom/miantan/myoface/ButtonFun;
.super Landroid/widget/LinearLayout;
.source "ButtonFun.java"


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field bg_down:I

.field bg_up:I

.field private iv_tag:Landroid/widget/ImageView;

.field iv_tag_id:I

.field private ll_fun:Landroid/widget/LinearLayout;

.field pressed:Z

.field private tv_tag:Landroid/widget/TextView;

.field tv_tag_id:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const-string v0, "myoface"

    iput-object v0, p0, Lcom/miantan/myoface/ButtonFun;->LOG_TAG:Ljava/lang/String;

    .line 23
    iput-boolean v2, p0, Lcom/miantan/myoface/ButtonFun;->pressed:Z

    .line 28
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000e

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 29
    const v0, 0x7f0b00a0

    invoke-virtual {p0, v0}, Lcom/miantan/myoface/ButtonFun;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miantan/myoface/ButtonFun;->ll_fun:Landroid/widget/LinearLayout;

    .line 30
    const v0, 0x7f0b00a1

    invoke-virtual {p0, v0}, Lcom/miantan/myoface/ButtonFun;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miantan/myoface/ButtonFun;->iv_tag:Landroid/widget/ImageView;

    .line 31
    const v0, 0x7f0b00a2

    invoke-virtual {p0, v0}, Lcom/miantan/myoface/ButtonFun;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miantan/myoface/ButtonFun;->tv_tag:Landroid/widget/TextView;

    .line 32
    iput-boolean v2, p0, Lcom/miantan/myoface/ButtonFun;->pressed:Z

    .line 33
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miantan/myoface/ButtonFun;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dispatchTouchEvent|"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 61
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 62
    iget-object v0, p0, Lcom/miantan/myoface/ButtonFun;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onTouchEvent|"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 84
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/miantan/myoface/ButtonFun;->invalidate()V

    .line 85
    return v3

    .line 65
    :pswitch_0
    iget-boolean v0, p0, Lcom/miantan/myoface/ButtonFun;->pressed:Z

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/miantan/myoface/ButtonFun;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onTouchEvent|down"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/miantan/myoface/ButtonFun;->ll_fun:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/miantan/myoface/ButtonFun;->bg_down:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 69
    iput-boolean v3, p0, Lcom/miantan/myoface/ButtonFun;->pressed:Z

    goto :goto_0

    .line 73
    :pswitch_1
    iget-boolean v0, p0, Lcom/miantan/myoface/ButtonFun;->pressed:Z

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/miantan/myoface/ButtonFun;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onTouchEvent|up"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/miantan/myoface/ButtonFun;->ll_fun:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/miantan/myoface/ButtonFun;->bg_up:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miantan/myoface/ButtonFun;->pressed:Z

    goto :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setResoucePressed(I)V
    .locals 0
    .parameter "bg"

    .prologue
    .line 49
    iput p1, p0, Lcom/miantan/myoface/ButtonFun;->bg_down:I

    .line 50
    return-void
.end method

.method public setResource(III)V
    .locals 2
    .parameter "bg"
    .parameter "tag"
    .parameter "text"

    .prologue
    .line 37
    iput p1, p0, Lcom/miantan/myoface/ButtonFun;->bg_up:I

    .line 38
    iput p2, p0, Lcom/miantan/myoface/ButtonFun;->iv_tag_id:I

    .line 39
    iput p3, p0, Lcom/miantan/myoface/ButtonFun;->tv_tag_id:I

    .line 41
    iget-object v0, p0, Lcom/miantan/myoface/ButtonFun;->ll_fun:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/miantan/myoface/ButtonFun;->bg_up:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 42
    iget-object v0, p0, Lcom/miantan/myoface/ButtonFun;->iv_tag:Landroid/widget/ImageView;

    iget v1, p0, Lcom/miantan/myoface/ButtonFun;->iv_tag_id:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 43
    iget-object v0, p0, Lcom/miantan/myoface/ButtonFun;->tv_tag:Landroid/widget/TextView;

    iget v1, p0, Lcom/miantan/myoface/ButtonFun;->tv_tag_id:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 45
    return-void
.end method
