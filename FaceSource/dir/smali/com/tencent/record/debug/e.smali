.class public Lcom/tencent/record/debug/e;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Ljava/text/SimpleDateFormat;

.field private static b:Ljava/io/FileFilter;


# instance fields
.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:I

.field private g:J

.field private h:Ljava/io/File;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:J

.field private l:Ljava/io/FileFilter;

.field private m:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const-string v0, "yyyy-MM-dd"

    invoke-static {v0}, Lcom/tencent/record/b/b;->a(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    sput-object v0, Lcom/tencent/record/debug/e;->a:Ljava/text/SimpleDateFormat;

    .line 96
    new-instance v0, Lcom/tencent/record/debug/f;

    invoke-direct {v0}, Lcom/tencent/record/debug/f;-><init>()V

    sput-object v0, Lcom/tencent/record/debug/e;->b:Ljava/io/FileFilter;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;IIILjava/lang/String;JILjava/lang/String;J)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v1, 0x7fffffff

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const-string v0, "Tracer.File"

    iput-object v0, p0, Lcom/tencent/record/debug/e;->c:Ljava/lang/String;

    .line 124
    iput v1, p0, Lcom/tencent/record/debug/e;->d:I

    .line 125
    iput v1, p0, Lcom/tencent/record/debug/e;->e:I

    .line 126
    const/16 v0, 0x1000

    iput v0, p0, Lcom/tencent/record/debug/e;->f:I

    .line 127
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/tencent/record/debug/e;->g:J

    .line 129
    const/16 v0, 0xa

    iput v0, p0, Lcom/tencent/record/debug/e;->i:I

    .line 130
    const-string v0, ".log"

    iput-object v0, p0, Lcom/tencent/record/debug/e;->j:Ljava/lang/String;

    .line 131
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/tencent/record/debug/e;->k:J

    .line 133
    new-instance v0, Lcom/tencent/record/debug/g;

    invoke-direct {v0, p0}, Lcom/tencent/record/debug/g;-><init>(Lcom/tencent/record/debug/e;)V

    iput-object v0, p0, Lcom/tencent/record/debug/e;->l:Ljava/io/FileFilter;

    .line 156
    new-instance v0, Lcom/tencent/record/debug/h;

    invoke-direct {v0, p0}, Lcom/tencent/record/debug/h;-><init>(Lcom/tencent/record/debug/e;)V

    iput-object v0, p0, Lcom/tencent/record/debug/e;->m:Ljava/util/Comparator;

    .line 204
    invoke-virtual {p0, p1}, Lcom/tencent/record/debug/e;->c(Ljava/io/File;)V

    .line 205
    invoke-virtual {p0, p2}, Lcom/tencent/record/debug/e;->b(I)V

    .line 206
    invoke-virtual {p0, p3}, Lcom/tencent/record/debug/e;->a(I)V

    .line 207
    invoke-virtual {p0, p4}, Lcom/tencent/record/debug/e;->c(I)V

    .line 208
    invoke-virtual {p0, p5}, Lcom/tencent/record/debug/e;->a(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0, p6, p7}, Lcom/tencent/record/debug/e;->b(J)V

    .line 210
    invoke-virtual {p0, p8}, Lcom/tencent/record/debug/e;->d(I)V

    .line 211
    invoke-virtual {p0, p9}, Lcom/tencent/record/debug/e;->b(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0, p10, p11}, Lcom/tencent/record/debug/e;->c(J)V

    .line 213
    return-void
.end method

.method public static a(Ljava/io/File;)J
    .locals 2
    .parameter

    .prologue
    .line 115
    :try_start_0
    sget-object v0, Lcom/tencent/record/debug/e;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 119
    :goto_0
    return-wide v0

    .line 117
    :catch_0
    move-exception v0

    .line 119
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method static synthetic d(Ljava/io/File;)I
    .locals 1
    .parameter

    .prologue
    .line 42
    invoke-static {p0}, Lcom/tencent/record/debug/e;->f(Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method private d(J)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 234
    invoke-virtual {p0, p1, p2}, Lcom/tencent/record/debug/e;->a(J)Ljava/io/File;

    move-result-object v0

    .line 236
    invoke-direct {p0, v0}, Lcom/tencent/record/debug/e;->e(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private e(Ljava/io/File;)Ljava/io/File;
    .locals 6
    .parameter

    .prologue
    .line 267
    invoke-virtual {p0, p1}, Lcom/tencent/record/debug/e;->b(Ljava/io/File;)[Ljava/io/File;

    move-result-object v3

    .line 270
    if-eqz v3, :cond_0

    array-length v0, v3

    if-nez v0, :cond_2

    .line 272
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/record/debug/e;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 297
    :cond_1
    return-object v1

    .line 275
    :cond_2
    invoke-virtual {p0, v3}, Lcom/tencent/record/debug/e;->a([Ljava/io/File;)[Ljava/io/File;

    .line 277
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    aget-object v1, v3, v0

    .line 279
    array-length v0, v3

    invoke-virtual {p0}, Lcom/tencent/record/debug/e;->e()I

    move-result v2

    sub-int/2addr v0, v2

    .line 281
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v2, v4

    invoke-virtual {p0}, Lcom/tencent/record/debug/e;->d()I

    move-result v4

    if-le v2, v4, :cond_3

    .line 284
    invoke-static {v1}, Lcom/tencent/record/debug/e;->f(Ljava/io/File;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    .line 285
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/record/debug/e;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 287
    add-int/lit8 v0, v0, 0x1

    .line 291
    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 293
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 291
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static f(Ljava/io/File;)I
    .locals 3
    .parameter

    .prologue
    .line 404
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 406
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 408
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 410
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 415
    :goto_0
    return v0

    .line 412
    :catch_0
    move-exception v0

    .line 415
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 2

    .prologue
    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/tencent/record/debug/e;->d(J)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public a(J)Ljava/io/File;
    .locals 4
    .parameter

    .prologue
    .line 248
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/tencent/record/debug/e;->h()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/tencent/record/debug/e;->a:Ljava/text/SimpleDateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 250
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 252
    return-object v0
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 458
    iput p1, p0, Lcom/tencent/record/debug/e;->d:I

    .line 459
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 437
    iput-object p1, p0, Lcom/tencent/record/debug/e;->c:Ljava/lang/String;

    .line 438
    return-void
.end method

.method public a([Ljava/io/File;)[Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 388
    iget-object v0, p0, Lcom/tencent/record/debug/e;->m:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 390
    return-object p1
.end method

.method public b()V
    .locals 8

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/tencent/record/debug/e;->h()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    .line 338
    :cond_0
    return-void

    .line 322
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/record/debug/e;->h()Ljava/io/File;

    move-result-object v0

    sget-object v1, Lcom/tencent/record/debug/e;->b:Ljava/io/FileFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 324
    if-eqz v1, :cond_0

    .line 329
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 331
    invoke-static {v3}, Lcom/tencent/record/debug/e;->a(Ljava/io/File;)J

    move-result-wide v4

    .line 333
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    invoke-virtual {p0}, Lcom/tencent/record/debug/e;->k()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 335
    invoke-static {v3}, Lcom/tencent/record/b/a;->a(Ljava/io/File;)Z

    .line 329
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public b(I)V
    .locals 0
    .parameter

    .prologue
    .line 479
    iput p1, p0, Lcom/tencent/record/debug/e;->e:I

    .line 480
    return-void
.end method

.method public b(J)V
    .locals 0
    .parameter

    .prologue
    .line 516
    iput-wide p1, p0, Lcom/tencent/record/debug/e;->g:J

    .line 517
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 579
    iput-object p1, p0, Lcom/tencent/record/debug/e;->j:Ljava/lang/String;

    .line 580
    return-void
.end method

.method public b(Ljava/io/File;)[Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 309
    iget-object v0, p0, Lcom/tencent/record/debug/e;->l:Ljava/io/FileFilter;

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/tencent/record/debug/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .locals 0
    .parameter

    .prologue
    .line 495
    iput p1, p0, Lcom/tencent/record/debug/e;->f:I

    .line 496
    return-void
.end method

.method public c(J)V
    .locals 0
    .parameter

    .prologue
    .line 599
    iput-wide p1, p0, Lcom/tencent/record/debug/e;->k:J

    .line 600
    return-void
.end method

.method public c(Ljava/io/File;)V
    .locals 0
    .parameter

    .prologue
    .line 537
    iput-object p1, p0, Lcom/tencent/record/debug/e;->h:Ljava/io/File;

    .line 538
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 447
    iget v0, p0, Lcom/tencent/record/debug/e;->d:I

    return v0
.end method

.method public d(I)V
    .locals 0
    .parameter

    .prologue
    .line 558
    iput p1, p0, Lcom/tencent/record/debug/e;->i:I

    .line 559
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 468
    iget v0, p0, Lcom/tencent/record/debug/e;->e:I

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 484
    iget v0, p0, Lcom/tencent/record/debug/e;->f:I

    return v0
.end method

.method public g()J
    .locals 2

    .prologue
    .line 505
    iget-wide v0, p0, Lcom/tencent/record/debug/e;->g:J

    return-wide v0
.end method

.method public h()Ljava/io/File;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/tencent/record/debug/e;->h:Ljava/io/File;

    return-object v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 547
    iget v0, p0, Lcom/tencent/record/debug/e;->i:I

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/tencent/record/debug/e;->j:Ljava/lang/String;

    return-object v0
.end method

.method public k()J
    .locals 2

    .prologue
    .line 589
    iget-wide v0, p0, Lcom/tencent/record/debug/e;->k:J

    return-wide v0
.end method
