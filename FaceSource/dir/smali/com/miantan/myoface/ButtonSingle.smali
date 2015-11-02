.class public Lcom/miantan/myoface/ButtonSingle;
.super Landroid/widget/LinearLayout;
.source "ButtonSingle.java"


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field bg_down:I

.field bg_up:I

.field private iv_pic:Landroid/widget/ImageView;

.field iv_pic_down:I

.field iv_pic_up:I

.field private iv_tag:Landroid/widget/ImageView;

.field iv_tag_id:I

.field private ll_single:Landroid/widget/LinearLayout;

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

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const-string v0, "myoface"

    iput-object v0, p0, Lcom/miantan/myoface/ButtonSingle;->LOG_TAG:Ljava/lang/String;

    .line 25
    iput-boolean v2, p0, Lcom/miantan/myoface/ButtonSingle;->pressed:Z

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000f

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 31
    const v0, 0x7f0b00a3

    invoke-virtual {p0, v0}, Lcom/miantan/myoface/ButtonSingle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miantan/myoface/ButtonSingle;->ll_single:Landroid/widget/LinearLayout;

    .line 32
    const v0, 0x7f0b00a4

    invoke-virtual {p0, v0}, Lcom/miantan/myoface/ButtonSingle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miantan/myoface/ButtonSingle;->iv_pic:Landroid/widget/ImageView;

    .line 33
    const v0, 0x7f0b00a1

    invoke-virtual {p0, v0}, Lcom/miantan/myoface/ButtonSingle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miantan/myoface/ButtonSingle;->iv_tag:Landroid/widget/ImageView;

    .line 34
    const v0, 0x7f0b00a2

    invoke-virtual {p0, v0}, Lcom/miantan/myoface/ButtonSingle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miantan/myoface/ButtonSingle;->tv_tag:Landroid/widget/TextView;

    .line 35
    iput-boolean v2, p0, Lcom/miantan/myoface/ButtonSingle;->pressed:Z

    .line 36
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/miantan/myoface/ButtonSingle;->LOG_TAG:Ljava/lang/String;

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

    .line 61
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 67
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 68
    iget-object v0, p0, Lcom/miantan/myoface/ButtonSingle;->LOG_TAG:Ljava/lang/String;

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

    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 92
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/miantan/myoface/ButtonSingle;->invalidate()V

    .line 93
    return v3

    .line 71
    :pswitch_0
    iget-boolean v0, p0, Lcom/miantan/myoface/ButtonSingle;->pressed:Z

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/miantan/myoface/ButtonSingle;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onTouchEvent|down"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/miantan/myoface/ButtonSingle;->ll_single:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/miantan/myoface/ButtonSingle;->bg_down:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 75
    iget-object v0, p0, Lcom/miantan/myoface/ButtonSingle;->iv_pic:Landroid/widget/ImageView;

    iget v1, p0, Lcom/miantan/myoface/ButtonSingle;->iv_pic_down:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    iput-boolean v3, p0, Lcom/miantan/myoface/ButtonSingle;->pressed:Z

    goto :goto_0

    .line 80
    :pswitch_1
    iget-boolean v0, p0, Lcom/miantan/myoface/ButtonSingle;->pressed:Z

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/miantan/myoface/ButtonSingle;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onTouchEvent|up"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/miantan/myoface/ButtonSingle;->ll_single:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/miantan/myoface/ButtonSingle;->bg_up:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 84
    iget-object v0, p0, Lcom/miantan/myoface/ButtonSingle;->iv_pic:Landroid/widget/ImageView;

    iget v1, p0, Lcom/miantan/myoface/ButtonSingle;->iv_pic_up:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miantan/myoface/ButtonSingle;->pressed:Z

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setResoucePressed(II)V
    .locals 0
    .parameter "bg"
    .parameter "pic"

    .prologue
    .line 54
    iput p1, p0, Lcom/miantan/myoface/ButtonSingle;->bg_down:I

    .line 55
    iput p2, p0, Lcom/miantan/myoface/ButtonSingle;->iv_pic_down:I

    .line 56
    return-void
.end method

.method public setResource(IIII)V
    .locals 2
    .parameter "bg"
    .parameter "pic"
    .parameter "tag"
    .parameter "text"

    .prologue
    .line 40
    iput p1, p0, Lcom/miantan/myoface/ButtonSingle;->bg_up:I

    .line 41
    iput p2, p0, Lcom/miantan/myoface/ButtonSingle;->iv_pic_up:I

    .line 42
    iput p3, p0, Lcom/miantan/myoface/ButtonSingle;->iv_tag_id:I

    .line 43
    iput p4, p0, Lcom/miantan/myoface/ButtonSingle;->tv_tag_id:I

    .line 45
    iget-object v0, p0, Lcom/miantan/myoface/ButtonSingle;->ll_single:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/miantan/myoface/ButtonSingle;->bg_up:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 46
    iget-object v0, p0, Lcom/miantan/myoface/ButtonSingle;->iv_pic:Landroid/widget/ImageView;

    iget v1, p0, Lcom/miantan/myoface/ButtonSingle;->iv_pic_up:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 47
    iget-object v0, p0, Lcom/miantan/myoface/ButtonSingle;->iv_tag:Landroid/widget/ImageView;

    iget v1, p0, Lcom/miantan/myoface/ButtonSingle;->iv_tag_id:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    iget-object v0, p0, Lcom/miantan/myoface/ButtonSingle;->tv_tag:Landroid/widget/TextView;

    iget v1, p0, Lcom/miantan/myoface/ButtonSingle;->tv_tag_id:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 50
    return-void
.end method
