.class public Lcom/tencent/connect/common/AssistActivity;
.super Landroid/app/Activity;
.source "ProGuard"


# static fields
.field static final synthetic a:Z

.field private static b:Lcom/tencent/connect/common/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/tencent/connect/common/AssistActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/connect/common/AssistActivity;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static a(Lcom/tencent/connect/common/b;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    sput-object p0, Lcom/tencent/connect/common/AssistActivity;->b:Lcom/tencent/connect/common/b;

    .line 45
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 36
    sget-object v0, Lcom/tencent/connect/common/AssistActivity;->b:Lcom/tencent/connect/common/b;

    if-eqz v0, :cond_0

    .line 37
    sget-object v0, Lcom/tencent/connect/common/AssistActivity;->b:Lcom/tencent/connect/common/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/connect/common/b;->onActivityResult(IILandroid/content/Intent;)V

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->finish()V

    .line 41
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/connect/common/AssistActivity;->requestWindowFeature(I)Z

    .line 23
    sget-boolean v0, Lcom/tencent/connect/common/AssistActivity;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/connect/common/AssistActivity;->b:Lcom/tencent/connect/common/b;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 24
    :cond_0
    sget-object v0, Lcom/tencent/connect/common/AssistActivity;->b:Lcom/tencent/connect/common/b;

    if-nez v0, :cond_1

    .line 25
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->finish()V

    .line 31
    :goto_0
    return-void

    .line 29
    :cond_1
    sget-object v0, Lcom/tencent/connect/common/AssistActivity;->b:Lcom/tencent/connect/common/b;

    invoke-virtual {v0}, Lcom/tencent/connect/common/b;->getActivityIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_request_code"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 30
    sget-object v1, Lcom/tencent/connect/common/AssistActivity;->b:Lcom/tencent/connect/common/b;

    invoke-virtual {v1}, Lcom/tencent/connect/common/b;->getActivityIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/tencent/connect/common/AssistActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
