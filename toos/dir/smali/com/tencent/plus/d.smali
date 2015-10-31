.class Lcom/tencent/plus/d;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/plus/e;


# direct methods
.method constructor <init>(Lcom/tencent/plus/e;)V
    .locals 0
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/tencent/plus/d;->a:Lcom/tencent/plus/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/tencent/plus/d;->a:Lcom/tencent/plus/e;

    iget-object v0, v0, Lcom/tencent/plus/e;->a:Lcom/tencent/plus/a;

    invoke-virtual {v0}, Lcom/tencent/plus/a;->clearAnimation()V

    .line 283
    iget-object v0, p0, Lcom/tencent/plus/d;->a:Lcom/tencent/plus/e;

    iget-object v0, v0, Lcom/tencent/plus/e;->a:Lcom/tencent/plus/a;

    invoke-static {v0}, Lcom/tencent/plus/a;->a(Lcom/tencent/plus/a;)V

    .line 285
    return-void
.end method
