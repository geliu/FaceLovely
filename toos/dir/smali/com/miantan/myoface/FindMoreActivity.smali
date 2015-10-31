.class public Lcom/miantan/myoface/FindMoreActivity;
.super Landroid/app/Activity;
.source "FindMoreActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private btnBackIndex:Landroid/widget/Button;

.field private imageIntroduction:Landroid/widget/ImageView;

.field private imageRecommend:Landroid/widget/ImageView;

.field private relativelayoutIntroduction:Landroid/widget/RelativeLayout;

.field private relativelayoutRecommend:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 20
    const-string v0, "MYOFace"

    iput-object v0, p0, Lcom/miantan/myoface/FindMoreActivity;->LOG_TAG:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 78
    :goto_0
    return-void

    .line 59
    :sswitch_0
    invoke-virtual {p0}, Lcom/miantan/myoface/FindMoreActivity;->finish()V

    .line 60
    const v1, 0x7f040006

    const v2, 0x7f040009

    invoke-virtual {p0, v1, v2}, Lcom/miantan/myoface/FindMoreActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 63
    :sswitch_1
    const-string v1, "FindMore_BtnRecommend"

    invoke-static {p0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :sswitch_2
    const-string v1, "FindMore_BtnIntroduction"

    invoke-static {p0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 73
    .local v0, aboutUsIntent:Landroid/content/Intent;
    const-class v1, Lcom/miantan/myoface/AboutUsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 74
    invoke-virtual {p0, v0}, Lcom/miantan/myoface/FindMoreActivity;->startActivity(Landroid/content/Intent;)V

    .line 75
    const v1, 0x7f040007

    const v2, 0x7f040008

    invoke-virtual {p0, v1, v2}, Lcom/miantan/myoface/FindMoreActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 56
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b000e -> :sswitch_0
        0x7f0b0028 -> :sswitch_1
        0x7f0b002b -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miantan/myoface/FindMoreActivity;->requestWindowFeature(I)Z

    .line 36
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/miantan/myoface/FindMoreActivity;->setContentView(I)V

    .line 39
    const v0, 0x7f0b000e

    invoke-virtual {p0, v0}, Lcom/miantan/myoface/FindMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miantan/myoface/FindMoreActivity;->btnBackIndex:Landroid/widget/Button;

    .line 42
    const v0, 0x7f0b0028

    invoke-virtual {p0, v0}, Lcom/miantan/myoface/FindMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miantan/myoface/FindMoreActivity;->relativelayoutRecommend:Landroid/widget/RelativeLayout;

    .line 43
    const v0, 0x7f0b002b

    invoke-virtual {p0, v0}, Lcom/miantan/myoface/FindMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miantan/myoface/FindMoreActivity;->relativelayoutIntroduction:Landroid/widget/RelativeLayout;

    .line 45
    iget-object v0, p0, Lcom/miantan/myoface/FindMoreActivity;->btnBackIndex:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v0, p0, Lcom/miantan/myoface/FindMoreActivity;->relativelayoutIntroduction:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const-string v0, "EnterFindMorePage"

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 88
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 89
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 82
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 83
    return-void
.end method
