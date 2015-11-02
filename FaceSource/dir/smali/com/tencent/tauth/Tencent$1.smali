.class Lcom/tencent/tauth/Tencent$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/tencent/tauth/Tencent;


# direct methods
.method constructor <init>(Lcom/tencent/tauth/Tencent;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/tencent/tauth/Tencent$1;->this$0:Lcom/tencent/tauth/Tencent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/tencent/tauth/Tencent$1;->this$0:Lcom/tencent/tauth/Tencent;

    #getter for: Lcom/tencent/tauth/Tencent;->mCheckUpdate:Lcom/tencent/connect/a/b;
    invoke-static {v0}, Lcom/tencent/tauth/Tencent;->access$000(Lcom/tencent/tauth/Tencent;)Lcom/tencent/connect/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/connect/a/b;->a()V

    .line 210
    return-void
.end method
