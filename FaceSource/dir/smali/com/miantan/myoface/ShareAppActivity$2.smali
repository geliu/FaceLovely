.class Lcom/miantan/myoface/ShareAppActivity$2;
.super Ljava/lang/Object;
.source "ShareAppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miantan/myoface/ShareAppActivity;->doShareToQQ(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miantan/myoface/ShareAppActivity;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$params:Landroid/os/Bundle;

.field private final synthetic val$tencent:Lcom/tencent/tauth/Tencent;


# direct methods
.method constructor <init>(Lcom/miantan/myoface/ShareAppActivity;Lcom/tencent/tauth/Tencent;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/miantan/myoface/ShareAppActivity$2;->this$0:Lcom/miantan/myoface/ShareAppActivity;

    iput-object p2, p0, Lcom/miantan/myoface/ShareAppActivity$2;->val$tencent:Lcom/tencent/tauth/Tencent;

    iput-object p3, p0, Lcom/miantan/myoface/ShareAppActivity$2;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/miantan/myoface/ShareAppActivity$2;->val$params:Landroid/os/Bundle;

    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/miantan/myoface/ShareAppActivity$2;)Lcom/miantan/myoface/ShareAppActivity;
    .locals 1
    .parameter

    .prologue
    .line 562
    iget-object v0, p0, Lcom/miantan/myoface/ShareAppActivity$2;->this$0:Lcom/miantan/myoface/ShareAppActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 567
    iget-object v0, p0, Lcom/miantan/myoface/ShareAppActivity$2;->val$tencent:Lcom/tencent/tauth/Tencent;

    iget-object v1, p0, Lcom/miantan/myoface/ShareAppActivity$2;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miantan/myoface/ShareAppActivity$2;->val$params:Landroid/os/Bundle;

    new-instance v3, Lcom/miantan/myoface/ShareAppActivity$2$1;

    invoke-direct {v3, p0}, Lcom/miantan/myoface/ShareAppActivity$2$1;-><init>(Lcom/miantan/myoface/ShareAppActivity$2;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tauth/Tencent;->shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    .line 588
    return-void
.end method
