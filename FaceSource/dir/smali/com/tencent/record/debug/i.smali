.class public abstract Lcom/tencent/record/debug/i;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private volatile a:I

.field private volatile b:Z

.field private c:Lcom/tencent/record/debug/b;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 28
    const/16 v0, 0x3f

    const/4 v1, 0x1

    sget-object v2, Lcom/tencent/record/debug/b;->a:Lcom/tencent/record/debug/b;

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/record/debug/i;-><init>(IZLcom/tencent/record/debug/b;)V

    .line 29
    return-void
.end method

.method public constructor <init>(IZLcom/tencent/record/debug/b;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/16 v0, 0x3f

    iput v0, p0, Lcom/tencent/record/debug/i;->a:I

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/record/debug/i;->b:Z

    .line 21
    sget-object v0, Lcom/tencent/record/debug/b;->a:Lcom/tencent/record/debug/b;

    iput-object v0, p0, Lcom/tencent/record/debug/i;->c:Lcom/tencent/record/debug/b;

    .line 41
    invoke-virtual {p0, p1}, Lcom/tencent/record/debug/i;->a(I)V

    .line 42
    invoke-virtual {p0, p2}, Lcom/tencent/record/debug/i;->a(Z)V

    .line 43
    invoke-virtual {p0, p3}, Lcom/tencent/record/debug/i;->a(Lcom/tencent/record/debug/b;)V

    .line 44
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput p1, p0, Lcom/tencent/record/debug/i;->a:I

    .line 159
    return-void
.end method

.method protected abstract a(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public a(Lcom/tencent/record/debug/b;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/tencent/record/debug/i;->c:Lcom/tencent/record/debug/b;

    .line 205
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/tencent/record/debug/i;->b:Z

    .line 182
    return-void
.end method

.method public b(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/tencent/record/debug/i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget v0, p0, Lcom/tencent/record/debug/i;->a:I

    invoke-static {v0, p1}, Lcom/tencent/record/b/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual/range {p0 .. p7}, Lcom/tencent/record/debug/i;->a(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/tencent/record/debug/i;->b:Z

    return v0
.end method

.method public e()Lcom/tencent/record/debug/b;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/tencent/record/debug/i;->c:Lcom/tencent/record/debug/b;

    return-object v0
.end method
