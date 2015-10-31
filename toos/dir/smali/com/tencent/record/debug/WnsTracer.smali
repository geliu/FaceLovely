.class public Lcom/tencent/record/debug/WnsTracer;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/tencent/record/debug/TraceLevel;


# static fields
.field protected static final CLIENT_CONFIG:Lcom/tencent/record/debug/e;

.field protected static final SERVICE_CONFIG:Lcom/tencent/record/debug/e;


# instance fields
.field private volatile enabled:Z

.field protected fileTracer:Lcom/tencent/record/debug/a;

.field private volatile fileTracerEnabled:Z

.field private volatile logcatTracerEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const-wide/16 v6, 0x2710

    const/high16 v3, 0x4

    const/16 v4, 0x2000

    const/16 v8, 0xa

    .line 125
    const/16 v2, 0x18

    .line 126
    const-wide/32 v10, 0x240c8400

    .line 128
    invoke-static {}, Lcom/tencent/record/debug/WnsTracer;->getLogFilePath()Ljava/io/File;

    move-result-object v1

    .line 130
    new-instance v0, Lcom/tencent/record/debug/e;

    const-string v5, "OpenSDK.Client.File.Tracer"

    const-string v9, ".app.log"

    invoke-direct/range {v0 .. v11}, Lcom/tencent/record/debug/e;-><init>(Ljava/io/File;IIILjava/lang/String;JILjava/lang/String;J)V

    sput-object v0, Lcom/tencent/record/debug/WnsTracer;->CLIENT_CONFIG:Lcom/tencent/record/debug/e;

    .line 134
    new-instance v0, Lcom/tencent/record/debug/e;

    const-string v5, "OpenSDK.File.Tracer"

    const-string v9, ".OpenSDK.log"

    invoke-direct/range {v0 .. v11}, Lcom/tencent/record/debug/e;-><init>(Ljava/io/File;IIILjava/lang/String;JILjava/lang/String;J)V

    sput-object v0, Lcom/tencent/record/debug/WnsTracer;->SERVICE_CONFIG:Lcom/tencent/record/debug/e;

    .line 137
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-boolean v0, p0, Lcom/tencent/record/debug/WnsTracer;->enabled:Z

    .line 142
    iput-boolean v0, p0, Lcom/tencent/record/debug/WnsTracer;->fileTracerEnabled:Z

    .line 143
    iput-boolean v0, p0, Lcom/tencent/record/debug/WnsTracer;->logcatTracerEnabled:Z

    .line 149
    return-void
.end method

.method public static deleteFile(Ljava/io/File;)V
    .locals 4
    .parameter

    .prologue
    .line 242
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 248
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 252
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 254
    invoke-static {v3}, Lcom/tencent/record/debug/WnsTracer;->deleteFile(Ljava/io/File;)V

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getLogFilePath()Ljava/io/File;
    .locals 6

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/record/a/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/record/a/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-static {}, Lcom/tencent/record/a/a;->b()Lcom/tencent/record/a/e;

    move-result-object v2

    .line 102
    if-eqz v2, :cond_0

    .line 104
    invoke-virtual {v2}, Lcom/tencent/record/a/e;->c()J

    move-result-wide v2

    const-wide/32 v4, 0x800000

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 106
    const/4 v0, 0x1

    .line 110
    :cond_0
    if-eqz v0, :cond_1

    .line 112
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 116
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/tencent/record/a/c;->c()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setFileTraceLevel(I)V
    .locals 0
    .parameter

    .prologue
    .line 87
    return-void
.end method

.method public static setMaxFolderSize(J)V
    .locals 2
    .parameter

    .prologue
    .line 40
    const-wide/32 v0, 0x40000

    div-long v0, p0, v0

    long-to-int v0, v0

    .line 54
    return-void
.end method

.method public static setMaxKeepPeriod(J)V
    .locals 2
    .parameter

    .prologue
    .line 64
    const-wide/32 v0, 0x5265c00

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 69
    :cond_0
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/tencent/record/debug/WnsTracer;->fileTracer:Lcom/tencent/record/debug/a;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/tencent/record/debug/WnsTracer;->fileTracer:Lcom/tencent/record/debug/a;

    invoke-virtual {v0}, Lcom/tencent/record/debug/a;->a()V

    .line 166
    :cond_0
    return-void
.end method

.method public final isEnabled()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/tencent/record/debug/WnsTracer;->enabled:Z

    return v0
.end method

.method public final isFileTracerEnabled()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/tencent/record/debug/WnsTracer;->fileTracerEnabled:Z

    return v0
.end method

.method public final isLogcatTracerEnabled()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/tencent/record/debug/WnsTracer;->logcatTracerEnabled:Z

    return v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 230
    const-string v0, "debug.file.tracelevel"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    const-string v0, "debug.file.tracelevel"

    const/16 v1, 0x3f

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 234
    const/16 v1, 0x8

    const-string v2, "WnsTracer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File Trace Level Changed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/tencent/record/debug/WnsTracer;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    iget-object v1, p0, Lcom/tencent/record/debug/WnsTracer;->fileTracer:Lcom/tencent/record/debug/a;

    invoke-virtual {v1, v0}, Lcom/tencent/record/debug/a;->a(I)V

    .line 238
    :cond_0
    return-void
.end method

.method public final setEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/tencent/record/debug/WnsTracer;->enabled:Z

    .line 193
    return-void
.end method

.method public final setFileTracerEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 207
    iget-object v0, p0, Lcom/tencent/record/debug/WnsTracer;->fileTracer:Lcom/tencent/record/debug/a;

    invoke-virtual {v0}, Lcom/tencent/record/debug/a;->a()V

    .line 209
    iput-boolean p1, p0, Lcom/tencent/record/debug/WnsTracer;->fileTracerEnabled:Z

    .line 210
    return-void
.end method

.method public final setFileTracerLevel(I)V
    .locals 1
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lcom/tencent/record/debug/WnsTracer;->fileTracer:Lcom/tencent/record/debug/a;

    invoke-virtual {v0, p1}, Lcom/tencent/record/debug/a;->a(I)V

    .line 203
    return-void
.end method

.method public final setLogcatTracerEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-boolean p1, p0, Lcom/tencent/record/debug/WnsTracer;->logcatTracerEnabled:Z

    .line 220
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/tencent/record/debug/WnsTracer;->fileTracer:Lcom/tencent/record/debug/a;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/tencent/record/debug/WnsTracer;->fileTracer:Lcom/tencent/record/debug/a;

    invoke-virtual {v0}, Lcom/tencent/record/debug/a;->a()V

    .line 156
    iget-object v0, p0, Lcom/tencent/record/debug/WnsTracer;->fileTracer:Lcom/tencent/record/debug/a;

    invoke-virtual {v0}, Lcom/tencent/record/debug/a;->b()V

    .line 158
    :cond_0
    return-void
.end method

.method public trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/tencent/record/debug/WnsTracer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/tencent/record/debug/WnsTracer;->isFileTracerEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/tencent/record/debug/WnsTracer;->fileTracer:Lcom/tencent/record/debug/a;

    if-nez v0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/tencent/record/debug/WnsTracer;->fileTracer:Lcom/tencent/record/debug/a;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move v1, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/record/debug/a;->b(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/record/debug/WnsTracer;->isLogcatTracerEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    sget-object v0, Lcom/tencent/record/debug/d;->a:Lcom/tencent/record/debug/d;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move v1, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/record/debug/d;->b(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
