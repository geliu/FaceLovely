.class public Lcom/miantan/myoface/JoinUsActivity;
.super Landroid/app/Activity;
.source "JoinUsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private btnGetBack:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    const-string v0, "MYOFace"

    iput-object v0, p0, Lcom/miantan/myoface/JoinUsActivity;->LOG_TAG:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 57
    :goto_0
    return-void

    .line 53
    :pswitch_0
    invoke-virtual {p0}, Lcom/miantan/myoface/JoinUsActivity;->finish()V

    .line 54
    const v0, 0x7f040006

    const v1, 0x7f040009

    invoke-virtual {p0, v0, v1}, Lcom/miantan/myoface/JoinUsActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0003
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miantan/myoface/JoinUsActivity;->requestWindowFeature(I)Z

    .line 36
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/miantan/myoface/JoinUsActivity;->setContentView(I)V

    .line 38
    const v0, 0x7f0b0003

    invoke-virtual {p0, v0}, Lcom/miantan/myoface/JoinUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miantan/myoface/JoinUsActivity;->btnGetBack:Landroid/widget/Button;

    .line 40
    iget-object v0, p0, Lcom/miantan/myoface/JoinUsActivity;->btnGetBack:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    const-string v0, "EnterJoinUsPage"

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 67
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 61
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 62
    return-void
.end method
