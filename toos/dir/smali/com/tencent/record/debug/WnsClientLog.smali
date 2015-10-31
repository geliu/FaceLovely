.class public Lcom/tencent/record/debug/WnsClientLog;
.super Lcom/tencent/record/debug/WnsTracer;
.source "ProGuard"


# static fields
.field public static instance:Lcom/tencent/record/debug/WnsClientLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/record/debug/WnsClientLog;->instance:Lcom/tencent/record/debug/WnsClientLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/tencent/record/debug/WnsTracer;-><init>()V

    .line 103
    new-instance v0, Lcom/tencent/record/debug/a;

    sget-object v1, Lcom/tencent/record/debug/WnsClientLog;->CLIENT_CONFIG:Lcom/tencent/record/debug/e;

    invoke-direct {v0, v1}, Lcom/tencent/record/debug/a;-><init>(Lcom/tencent/record/debug/e;)V

    iput-object v0, p0, Lcom/tencent/record/debug/WnsClientLog;->fileTracer:Lcom/tencent/record/debug/a;

    .line 104
    return-void
.end method

.method public static ensureLogsToFile()V
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lcom/tencent/record/debug/WnsClientLog;->getInstance()Lcom/tencent/record/debug/WnsClientLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/record/debug/WnsClientLog;->flush()V

    .line 97
    return-void
.end method

.method public static getInstance()Lcom/tencent/record/debug/WnsClientLog;
    .locals 2

    .prologue
    .line 23
    sget-object v0, Lcom/tencent/record/debug/WnsClientLog;->instance:Lcom/tencent/record/debug/WnsClientLog;

    if-nez v0, :cond_1

    .line 25
    const-class v1, Lcom/tencent/record/debug/WnsClientLog;

    monitor-enter v1

    .line 27
    :try_start_0
    sget-object v0, Lcom/tencent/record/debug/WnsClientLog;->instance:Lcom/tencent/record/debug/WnsClientLog;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/tencent/record/debug/WnsClientLog;

    invoke-direct {v0}, Lcom/tencent/record/debug/WnsClientLog;-><init>()V

    sput-object v0, Lcom/tencent/record/debug/WnsClientLog;->instance:Lcom/tencent/record/debug/WnsClientLog;

    .line 31
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_1
    sget-object v0, Lcom/tencent/record/debug/WnsClientLog;->instance:Lcom/tencent/record/debug/WnsClientLog;

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 53
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/tencent/record/debug/WnsClientLog;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/tencent/record/debug/WnsClientLog;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 83
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/tencent/record/debug/WnsClientLog;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 88
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/tencent/record/debug/WnsClientLog;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 63
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/tencent/record/debug/WnsClientLog;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/tencent/record/debug/WnsClientLog;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    return-void
.end method

.method public stop()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 107
    const-class v1, Lcom/tencent/record/debug/WnsClientLog;

    monitor-enter v1

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/tencent/record/debug/WnsClientLog;->fileTracer:Lcom/tencent/record/debug/a;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/tencent/record/debug/WnsClientLog;->fileTracer:Lcom/tencent/record/debug/a;

    invoke-virtual {v0}, Lcom/tencent/record/debug/a;->a()V

    .line 111
    iget-object v0, p0, Lcom/tencent/record/debug/WnsClientLog;->fileTracer:Lcom/tencent/record/debug/a;

    invoke-virtual {v0}, Lcom/tencent/record/debug/a;->b()V

    .line 114
    :cond_0
    monitor-exit v1

    .line 115
    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 43
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/tencent/record/debug/WnsClientLog;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/tencent/record/debug/WnsClientLog;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 73
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/tencent/record/debug/WnsClientLog;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/tencent/record/debug/WnsClientLog;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    return-void
.end method
