.class public Lcom/miantan/myoface/LoadingPageActivity;
.super Landroid/app/Activity;
.source "LoadingPageActivity.java"


# instance fields
.field private music_loading:I

.field private sp_loading:Landroid/media/SoundPool;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0, v3}, Lcom/miantan/myoface/LoadingPageActivity;->requestWindowFeature(I)Z

    .line 33
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/miantan/myoface/LoadingPageActivity;->setContentView(I)V

    .line 37
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    const/4 v2, 0x5

    invoke-direct {v0, v1, v3, v2}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/miantan/myoface/LoadingPageActivity;->sp_loading:Landroid/media/SoundPool;

    .line 39
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/miantan/myoface/LoadingPageActivity$1;

    invoke-direct {v1, p0}, Lcom/miantan/myoface/LoadingPageActivity$1;-><init>(Lcom/miantan/myoface/LoadingPageActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 132
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 133
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 145
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 146
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 147
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 139
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 140
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 141
    return-void
.end method
