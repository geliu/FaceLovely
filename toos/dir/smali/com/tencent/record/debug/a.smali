.class public Lcom/tencent/record/debug/a;
.super Lcom/tencent/record/debug/i;
.source "ProGuard"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private a:Lcom/tencent/record/debug/e;

.field private b:Ljava/io/FileWriter;

.field private c:Ljava/io/File;

.field private d:[C

.field private volatile e:Lcom/tencent/record/debug/c;

.field private volatile f:Lcom/tencent/record/debug/c;

.field private volatile g:Lcom/tencent/record/debug/c;

.field private volatile h:Lcom/tencent/record/debug/c;

.field private volatile i:Z

.field private j:Landroid/os/HandlerThread;

.field private k:Landroid/os/Handler;


# direct methods
.method public constructor <init>(IZLcom/tencent/record/debug/b;Lcom/tencent/record/debug/e;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/record/debug/i;-><init>(IZLcom/tencent/record/debug/b;)V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/record/debug/a;->i:Z

    .line 93
    invoke-virtual {p0, p4}, Lcom/tencent/record/debug/a;->a(Lcom/tencent/record/debug/e;)V

    .line 95
    new-instance v0, Lcom/tencent/record/debug/c;

    invoke-direct {v0}, Lcom/tencent/record/debug/c;-><init>()V

    iput-object v0, p0, Lcom/tencent/record/debug/a;->e:Lcom/tencent/record/debug/c;

    .line 96
    new-instance v0, Lcom/tencent/record/debug/c;

    invoke-direct {v0}, Lcom/tencent/record/debug/c;-><init>()V

    iput-object v0, p0, Lcom/tencent/record/debug/a;->f:Lcom/tencent/record/debug/c;

    .line 98
    iget-object v0, p0, Lcom/tencent/record/debug/a;->e:Lcom/tencent/record/debug/c;

    iput-object v0, p0, Lcom/tencent/record/debug/a;->g:Lcom/tencent/record/debug/c;

    .line 99
    iget-object v0, p0, Lcom/tencent/record/debug/a;->f:Lcom/tencent/record/debug/c;

    iput-object v0, p0, Lcom/tencent/record/debug/a;->h:Lcom/tencent/record/debug/c;

    .line 101
    invoke-virtual {p4}, Lcom/tencent/record/debug/e;->f()I

    move-result v0

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/tencent/record/debug/a;->d:[C

    .line 103
    invoke-virtual {p4}, Lcom/tencent/record/debug/e;->b()V

    .line 105
    invoke-direct {p0}, Lcom/tencent/record/debug/a;->h()Ljava/io/Writer;

    .line 107
    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p4}, Lcom/tencent/record/debug/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lcom/tencent/record/debug/e;->i()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/tencent/record/debug/a;->j:Landroid/os/HandlerThread;

    .line 109
    iget-object v0, p0, Lcom/tencent/record/debug/a;->j:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/tencent/record/debug/a;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/tencent/record/debug/a;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/record/debug/a;->j:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/tencent/record/debug/a;->k:Landroid/os/Handler;

    .line 119
    :cond_1
    invoke-direct {p0}, Lcom/tencent/record/debug/a;->f()V

    .line 120
    return-void
.end method

.method public constructor <init>(Lcom/tencent/record/debug/e;)V
    .locals 3
    .parameter

    .prologue
    .line 73
    const/16 v0, 0x3f

    const/4 v1, 0x1

    sget-object v2, Lcom/tencent/record/debug/b;->a:Lcom/tencent/record/debug/b;

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/tencent/record/debug/a;-><init>(IZLcom/tencent/record/debug/b;Lcom/tencent/record/debug/e;)V

    .line 74
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    .line 190
    iget-object v0, p0, Lcom/tencent/record/debug/a;->k:Landroid/os/Handler;

    const/16 v1, 0x400

    invoke-virtual {p0}, Lcom/tencent/record/debug/a;->c()Lcom/tencent/record/debug/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/record/debug/e;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 191
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 199
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/record/debug/a;->j:Landroid/os/HandlerThread;

    if-eq v0, v1, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/record/debug/a;->i:Z

    if-nez v0, :cond_0

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/record/debug/a;->i:Z

    .line 212
    invoke-direct {p0}, Lcom/tencent/record/debug/a;->j()V

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/tencent/record/debug/a;->h:Lcom/tencent/record/debug/c;

    invoke-direct {p0}, Lcom/tencent/record/debug/a;->h()Ljava/io/Writer;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/record/debug/a;->d:[C

    invoke-virtual {v0, v1, v2}, Lcom/tencent/record/debug/c;->a(Ljava/io/Writer;[C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    iget-object v0, p0, Lcom/tencent/record/debug/a;->h:Lcom/tencent/record/debug/c;

    invoke-virtual {v0}, Lcom/tencent/record/debug/c;->b()V

    .line 229
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/record/debug/a;->i:Z

    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    .line 225
    iget-object v0, p0, Lcom/tencent/record/debug/a;->h:Lcom/tencent/record/debug/c;

    invoke-virtual {v0}, Lcom/tencent/record/debug/c;->b()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/record/debug/a;->h:Lcom/tencent/record/debug/c;

    invoke-virtual {v1}, Lcom/tencent/record/debug/c;->b()V

    throw v0
.end method

.method private h()Ljava/io/Writer;
    .locals 3

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/tencent/record/debug/a;->c()Lcom/tencent/record/debug/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/record/debug/e;->a()Ljava/io/File;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/record/debug/a;->c:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 245
    iput-object v0, p0, Lcom/tencent/record/debug/a;->c:Ljava/io/File;

    .line 247
    invoke-direct {p0}, Lcom/tencent/record/debug/a;->i()V

    .line 251
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    iget-object v1, p0, Lcom/tencent/record/debug/a;->c:Ljava/io/File;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    iput-object v0, p0, Lcom/tencent/record/debug/a;->b:Ljava/io/FileWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/tencent/record/debug/a;->b:Ljava/io/FileWriter;

    :goto_0
    return-object v0

    .line 253
    :catch_0
    move-exception v0

    .line 255
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/tencent/record/debug/a;->b:Ljava/io/FileWriter;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/tencent/record/debug/a;->b:Ljava/io/FileWriter;

    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V

    .line 276
    iget-object v0, p0, Lcom/tencent/record/debug/a;->b:Ljava/io/FileWriter;

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 279
    :catch_0
    move-exception v0

    .line 281
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 290
    monitor-enter p0

    .line 292
    :try_start_0
    iget-object v0, p0, Lcom/tencent/record/debug/a;->g:Lcom/tencent/record/debug/c;

    iget-object v1, p0, Lcom/tencent/record/debug/a;->e:Lcom/tencent/record/debug/c;

    if-ne v0, v1, :cond_0

    .line 294
    iget-object v0, p0, Lcom/tencent/record/debug/a;->f:Lcom/tencent/record/debug/c;

    iput-object v0, p0, Lcom/tencent/record/debug/a;->g:Lcom/tencent/record/debug/c;

    .line 295
    iget-object v0, p0, Lcom/tencent/record/debug/a;->e:Lcom/tencent/record/debug/c;

    iput-object v0, p0, Lcom/tencent/record/debug/a;->h:Lcom/tencent/record/debug/c;

    .line 302
    :goto_0
    monitor-exit p0

    .line 303
    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/tencent/record/debug/a;->e:Lcom/tencent/record/debug/c;

    iput-object v0, p0, Lcom/tencent/record/debug/a;->g:Lcom/tencent/record/debug/c;

    .line 300
    iget-object v0, p0, Lcom/tencent/record/debug/a;->f:Lcom/tencent/record/debug/c;

    iput-object v0, p0, Lcom/tencent/record/debug/a;->h:Lcom/tencent/record/debug/c;

    goto :goto_0

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 128
    iget-object v0, p0, Lcom/tencent/record/debug/a;->k:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/tencent/record/debug/a;->k:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 132
    :cond_0
    return-void
.end method

.method protected a(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/tencent/record/debug/a;->e()Lcom/tencent/record/debug/b;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/record/debug/b;->a(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-virtual {p0, v0}, Lcom/tencent/record/debug/a;->a(Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public a(Lcom/tencent/record/debug/e;)V
    .locals 0
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/tencent/record/debug/a;->a:Lcom/tencent/record/debug/e;

    .line 324
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Lcom/tencent/record/debug/a;->g:Lcom/tencent/record/debug/c;

    invoke-virtual {v0, p1}, Lcom/tencent/record/debug/c;->a(Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/tencent/record/debug/a;->g:Lcom/tencent/record/debug/c;

    invoke-virtual {v0}, Lcom/tencent/record/debug/c;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/record/debug/a;->c()Lcom/tencent/record/debug/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/record/debug/e;->f()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/tencent/record/debug/a;->a()V

    .line 166
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/tencent/record/debug/a;->i()V

    .line 145
    iget-object v0, p0, Lcom/tencent/record/debug/a;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 146
    return-void
.end method

.method public c()Lcom/tencent/record/debug/e;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/tencent/record/debug/a;->a:Lcom/tencent/record/debug/e;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter

    .prologue
    .line 171
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 182
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 175
    :pswitch_0
    invoke-direct {p0}, Lcom/tencent/record/debug/a;->g()V

    .line 176
    invoke-direct {p0}, Lcom/tencent/record/debug/a;->f()V

    goto :goto_0

    .line 171
    :pswitch_data_0
    .packed-switch 0x400
        :pswitch_0
    .end packed-switch
.end method
