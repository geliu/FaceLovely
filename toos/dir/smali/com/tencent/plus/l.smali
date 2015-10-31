.class Lcom/tencent/plus/l;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/plus/j;


# direct methods
.method constructor <init>(Lcom/tencent/plus/j;)V
    .locals 0
    .parameter

    .prologue
    .line 451
    iput-object p1, p0, Lcom/tencent/plus/l;->a:Lcom/tencent/plus/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/tencent/plus/l;->a:Lcom/tencent/plus/j;

    iget-object v0, v0, Lcom/tencent/plus/j;->a:Lcom/tencent/plus/ImageActivity;

    invoke-static {v0}, Lcom/tencent/plus/ImageActivity;->g(Lcom/tencent/plus/ImageActivity;)V

    .line 456
    return-void
.end method
