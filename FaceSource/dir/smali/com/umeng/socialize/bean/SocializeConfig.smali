.class public Lcom/umeng/socialize/bean/SocializeConfig;
.super Lcom/umeng/socialize/bean/CallbackConfig;
.source "SocializeConfig.java"


# static fields
.field private static final b:Ljava/lang/String;

.field private static f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/umeng/socialize/sso/UMSsoHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field private static h:Lcom/umeng/socialize/bean/SocializeConfig;

.field private static o:Lcom/umeng/socialize/bean/CustomPlatform;

.field private static p:Lcom/umeng/socialize/bean/CustomPlatform;

.field private static s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/umeng/socialize/bean/SnsPlatform;",
            ">;"
        }
    .end annotation
.end field

.field private static t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/SnsPlatform;",
            ">;"
        }
    .end annotation
.end field

.field private static w:[Ljava/lang/String;

.field private static x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/SHARE_MEDIA;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Z

.field private d:Z

.field private e:Z

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/umeng/socialize/bean/SHARE_MEDIA;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private q:Z

.field private r:Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/SHARE_MEDIA;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/CustomPlatform;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->b:Ljava/lang/String;

    .line 50
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->f:Landroid/util/SparseArray;

    .line 52
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->GENERIC:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    sput-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->g:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 55
    new-instance v0, Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-direct {v0}, Lcom/umeng/socialize/bean/SocializeConfig;-><init>()V

    sput-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->h:Lcom/umeng/socialize/bean/SocializeConfig;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->s:Ljava/util/Map;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 87
    sput-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->t:Ljava/util/List;

    .line 103
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->w:[Ljava/lang/String;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->x:Ljava/util/List;

    .line 113
    invoke-static {}, Lcom/umeng/socialize/bean/SocializeConfig;->a()V

    .line 114
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 120
    invoke-direct {p0}, Lcom/umeng/socialize/bean/CallbackConfig;-><init>()V

    .line 42
    iput-boolean v1, p0, Lcom/umeng/socialize/bean/SocializeConfig;->c:Z

    .line 43
    iput-boolean v1, p0, Lcom/umeng/socialize/bean/SocializeConfig;->d:Z

    .line 46
    iput-boolean v1, p0, Lcom/umeng/socialize/bean/SocializeConfig;->e:Z

    .line 62
    iput-boolean v1, p0, Lcom/umeng/socialize/bean/SocializeConfig;->j:Z

    .line 64
    iput-boolean v1, p0, Lcom/umeng/socialize/bean/SocializeConfig;->k:Z

    .line 66
    iput-boolean v1, p0, Lcom/umeng/socialize/bean/SocializeConfig;->l:Z

    .line 68
    const-string v0, "Sharing Socialize"

    iput-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->m:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->n:Ljava/lang/String;

    .line 75
    iput-boolean v1, p0, Lcom/umeng/socialize/bean/SocializeConfig;->q:Z

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->u:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->v:Ljava/util/List;

    .line 121
    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)Lcom/umeng/socialize/bean/SnsPlatform;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/SnsPlatform;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/umeng/socialize/bean/SnsPlatform;"
        }
    .end annotation

    .prologue
    .line 448
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 455
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 449
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SnsPlatform;

    .line 450
    iget-object v2, v0, Lcom/umeng/socialize/bean/SnsPlatform;->mKeyword:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 451
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 448
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/SHARE_MEDIA;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/SnsPlatform;",
            ">;"
        }
    .end annotation

    .prologue
    .line 516
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 517
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 524
    return-object v2

    .line 518
    :cond_0
    sget-object v3, Lcom/umeng/socialize/bean/SocializeConfig;->t:Ljava/util/List;

    .line 519
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v0

    .line 518
    invoke-direct {p0, v3, v0}, Lcom/umeng/socialize/bean/SocializeConfig;->a(Ljava/util/List;Ljava/lang/String;)Lcom/umeng/socialize/bean/SnsPlatform;

    move-result-object v0

    .line 520
    if-eqz v0, :cond_1

    .line 521
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private static a()V
    .locals 3

    .prologue
    .line 138
    new-instance v0, Lcom/umeng/socialize/bean/d;

    .line 139
    const-string v1, "sina"

    .line 138
    invoke-direct {v0, v1}, Lcom/umeng/socialize/bean/d;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-static {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->a(Lcom/umeng/socialize/bean/SnsPlatform;)V

    .line 143
    new-instance v0, Lcom/umeng/socialize/bean/d;

    .line 144
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->DOUBAN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-direct {v0, v1}, Lcom/umeng/socialize/bean/d;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-static {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->a(Lcom/umeng/socialize/bean/SnsPlatform;)V

    .line 148
    new-instance v0, Lcom/umeng/socialize/bean/d;

    .line 149
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->RENREN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-direct {v0, v1}, Lcom/umeng/socialize/bean/d;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-static {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->a(Lcom/umeng/socialize/bean/SnsPlatform;)V

    .line 153
    new-instance v0, Lcom/umeng/socialize/bean/d;

    .line 154
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TENCENT:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-direct {v0, v1}, Lcom/umeng/socialize/bean/d;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-static {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->a(Lcom/umeng/socialize/bean/SnsPlatform;)V

    .line 158
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 159
    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 160
    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SINA:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 158
    sput-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->w:[Ljava/lang/String;

    .line 161
    return-void
.end method

.method private static a(Lcom/umeng/socialize/bean/SnsPlatform;)V
    .locals 2
    .parameter

    .prologue
    .line 169
    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/umeng/socialize/bean/SnsPlatform;->mKeyword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/umeng/socialize/bean/SnsPlatform;->mKeyword:Ljava/lang/String;

    .line 171
    sget-object v1, Lcom/umeng/socialize/bean/SocializeConfig;->s:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    sget-object v1, Lcom/umeng/socialize/bean/SocializeConfig;->s:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :cond_0
    sget-object v1, Lcom/umeng/socialize/bean/SocializeConfig;->s:Ljava/util/Map;

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_1
    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    .line 493
    iget-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 495
    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->x:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/umeng/socialize/bean/SocializeConfig;->a(Ljava/util/List;)Ljava/util/List;

    .line 501
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 502
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 505
    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 506
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 509
    return-void

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->u:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/umeng/socialize/bean/SocializeConfig;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->t:Ljava/util/List;

    goto :goto_0

    .line 503
    :cond_1
    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->t:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SnsPlatform;

    iget-object v3, v0, Lcom/umeng/socialize/bean/SnsPlatform;->mKeyword:Ljava/lang/String;

    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->t:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SnsPlatform;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 506
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 507
    sget-object v3, Lcom/umeng/socialize/bean/SocializeConfig;->t:Ljava/util/List;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SnsPlatform;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 532
    sget-object v1, Lcom/umeng/socialize/bean/SocializeConfig;->w:[Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/umeng/socialize/bean/SocializeConfig;->w:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_1

    .line 553
    :cond_0
    return-void

    .line 535
    :cond_1
    invoke-direct {p0}, Lcom/umeng/socialize/bean/SocializeConfig;->d()V

    move v1, v0

    move v2, v0

    .line 537
    :goto_0
    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->w:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 538
    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 539
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 537
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 540
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SnsPlatform;

    .line 541
    sget-object v4, Lcom/umeng/socialize/bean/SocializeConfig;->w:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 542
    sget-object v5, Lcom/umeng/socialize/bean/SocializeConfig;->t:Ljava/util/List;

    invoke-static {v4, v5}, Lcom/umeng/socialize/utils/SocializeUtils;->isValidPlatform(Ljava/lang/String;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 543
    iget-object v5, v0, Lcom/umeng/socialize/bean/SnsPlatform;->mKeyword:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 546
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 547
    sget-object v3, Lcom/umeng/socialize/bean/SocializeConfig;->t:Ljava/util/List;

    invoke-interface {v3, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 548
    add-int/lit8 v2, v2, 0x1

    .line 549
    goto :goto_1
.end method

.method private d()V
    .locals 7

    .prologue
    .line 560
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 562
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 563
    sget-object v3, Lcom/umeng/socialize/bean/SocializeConfig;->w:[Ljava/lang/String;

    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v4, :cond_0

    .line 568
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->w:[Ljava/lang/String;

    .line 569
    return-void

    .line 563
    :cond_0
    aget-object v5, v3, v0

    .line 564
    sget-object v6, Lcom/umeng/socialize/bean/SocializeConfig;->t:Ljava/util/List;

    invoke-static {v5, v6}, Lcom/umeng/socialize/utils/SocializeUtils;->isValidPlatform(Ljava/lang/String;Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 565
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getSelectedPlatfrom()Lcom/umeng/socialize/bean/SHARE_MEDIA;
    .locals 1

    .prologue
    .line 753
    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->g:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    return-object v0
.end method

.method public static getSocializeConfig()Lcom/umeng/socialize/bean/SocializeConfig;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->h:Lcom/umeng/socialize/bean/SocializeConfig;

    return-object v0
.end method

.method public static isSupportQQZoneSSO(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 858
    const-string v1, "com.tencent.mobileqq"

    .line 859
    invoke-static {v1, p0}, Lcom/umeng/socialize/utils/DeviceConfig;->isAppInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 866
    :cond_0
    :goto_0
    return v0

    .line 862
    :cond_1
    invoke-static {v1, p0}, Lcom/umeng/socialize/utils/DeviceConfig;->getAppVersion(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 863
    if-eqz v1, :cond_0

    .line 866
    const-string v2, "4.1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSupportSinaSSO(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 833
    const-string v1, "com.sina.weibo"

    .line 834
    invoke-static {v1, p0}, Lcom/umeng/socialize/utils/DeviceConfig;->isAppInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 846
    :cond_0
    :goto_0
    return v0

    .line 838
    :cond_1
    :try_start_0
    const-class v2, Lcom/sina/sso/RemoteSSO;

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 842
    invoke-static {v1, p0}, Lcom/umeng/socialize/utils/DeviceConfig;->getAppVersion(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 843
    if-eqz v1, :cond_0

    .line 846
    const-string v2, "3.0.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 839
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isSupportTencentWBSSO(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 878
    const-string v1, "com.tencent.WBlog"

    .line 879
    invoke-static {v1, p0}, Lcom/umeng/socialize/utils/DeviceConfig;->isAppInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 886
    :cond_0
    :goto_0
    return v0

    .line 882
    :cond_1
    invoke-static {v1, p0}, Lcom/umeng/socialize/utils/DeviceConfig;->getAppVersion(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 883
    if-eqz v1, :cond_0

    .line 886
    const-string v2, "3.8.1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setSelectedPlatfrom(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 1
    .parameter

    .prologue
    .line 741
    sput-object p0, Lcom/umeng/socialize/bean/SocializeConfig;->g:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 742
    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->g:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-nez v0, :cond_0

    .line 743
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->GENERIC:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    sput-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->g:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 745
    :cond_0
    return-void
.end method


# virtual methods
.method public addCustomPlatform(Lcom/umeng/socialize/bean/CustomPlatform;)V
    .locals 0
    .parameter

    .prologue
    .line 723
    invoke-static {p1}, Lcom/umeng/socialize/bean/SocializeConfig;->a(Lcom/umeng/socialize/bean/SnsPlatform;)V

    .line 724
    return-void
.end method

.method public addFollow(Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 233
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->i:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 238
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->i:Ljava/util/Map;

    .line 241
    :cond_2
    iget-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 242
    iget-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 243
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 245
    :cond_3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 246
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 247
    iget-object v1, p0, Lcom/umeng/socialize/bean/SocializeConfig;->i:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addFollow(Lcom/umeng/socialize/bean/SHARE_MEDIA;[Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 261
    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    .line 268
    :cond_0
    return-void

    .line 265
    :cond_1
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p2, v0

    .line 266
    invoke-virtual {p0, p1, v2}, Lcom/umeng/socialize/bean/SocializeConfig;->addFollow(Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public closeToast()V
    .locals 1

    .prologue
    .line 760
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->a:Z

    .line 761
    return-void
.end method

.method public containsDeletePlatform(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z
    .locals 1
    .parameter

    .prologue
    .line 386
    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public enableSIMCheck(Z)V
    .locals 0
    .parameter

    .prologue
    .line 789
    iput-boolean p1, p0, Lcom/umeng/socialize/bean/SocializeConfig;->l:Z

    .line 790
    return-void
.end method

.method public fireAllListenersOnComplete(Ljava/lang/Class;Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;",
            ">;",
            "Lcom/umeng/socialize/bean/SHARE_MEDIA;",
            "I",
            "Lcom/umeng/socialize/bean/SocializeEntity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 944
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/bean/SocializeConfig;->getListener(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    .line 945
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 954
    :cond_0
    return-void

    .line 949
    :cond_1
    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 950
    if-eqz v3, :cond_2

    .line 951
    invoke-interface {v3, p2, p3, p4}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;->onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 949
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public fireAllListenersOnStart(Ljava/lang/Class;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 917
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/bean/SocializeConfig;->getListener(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    .line 918
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 927
    :cond_0
    return-void

    .line 922
    :cond_1
    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 923
    if-eqz v3, :cond_2

    .line 924
    invoke-interface {v3}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;->onStart()V

    .line 922
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getAllPlatforms(Landroid/content/Context;Lcom/umeng/socialize/controller/UMSocialService;)Ljava/util/List;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/umeng/socialize/controller/UMSocialService;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/SnsPlatform;",
            ">;"
        }
    .end annotation

    .prologue
    .line 469
    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 471
    invoke-static {p1, p0}, Lcom/umeng/socialize/common/SocialSNSHelper;->getSupprotCloudPlatforms(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeConfig;)Ljava/util/List;

    .line 474
    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->t:Ljava/util/List;

    sget-object v1, Lcom/umeng/socialize/bean/SocializeConfig;->s:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 476
    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 480
    invoke-direct {p0}, Lcom/umeng/socialize/bean/SocializeConfig;->b()V

    .line 483
    invoke-direct {p0}, Lcom/umeng/socialize/bean/SocializeConfig;->c()V

    .line 484
    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->t:Ljava/util/List;

    return-object v0

    .line 476
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SnsPlatform;

    .line 477
    invoke-interface {p2}, Lcom/umeng/socialize/controller/UMSocialService;->getEntity()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v2

    iget-object v2, v2, Lcom/umeng/socialize/bean/SocializeEntity;->mDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/umeng/socialize/bean/SnsPlatform;->setEntityDescriptor(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCacheValidStatus()Z
    .locals 1

    .prologue
    .line 907
    iget-boolean v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->e:Z

    return v0
.end method

.method public getCustomPlatforms()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/CustomPlatform;",
            ">;"
        }
    .end annotation

    .prologue
    .line 642
    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 643
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 648
    iget-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->v:Ljava/util/List;

    return-object v0

    .line 643
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SnsPlatform;

    .line 644
    instance-of v2, v0, Lcom/umeng/socialize/bean/CustomPlatform;

    if-eqz v2, :cond_0

    .line 645
    iget-object v2, p0, Lcom/umeng/socialize/bean/SocializeConfig;->v:Ljava/util/List;

    check-cast v0, Lcom/umeng/socialize/bean/CustomPlatform;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getFollowFids(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/util/Set;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/umeng/socialize/bean/SHARE_MEDIA;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 298
    iget-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->i:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    new-instance v1, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    .line 301
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMailSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getOauthDialogFollowListener()Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->r:Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;

    return-object v0
.end method

.method public getPlatformMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/umeng/socialize/bean/SnsPlatform;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->s:Ljava/util/Map;

    return-object v0
.end method

.method public getPlatforms()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/SHARE_MEDIA;",
            ">;"
        }
    .end annotation

    .prologue
    .line 434
    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 435
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 436
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 443
    return-object v1

    .line 436
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 437
    invoke-static {v0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->convertToEmun(Ljava/lang/String;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v0

    .line 439
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->isCustomPlatform()Z

    move-result v3

    if-nez v3, :cond_0

    .line 440
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getSinaCallbackUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getSsoHandler(I)Lcom/umeng/socialize/sso/UMSsoHandler;
    .locals 3
    .parameter

    .prologue
    .line 710
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "## get sso Handler, requestCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/sso/UMSsoHandler;

    return-object v0
.end method

.method public getSsoHandlersMap()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/umeng/socialize/sso/UMSsoHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 732
    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->f:Landroid/util/SparseArray;

    return-object v0
.end method

.method public isCheckSIM()Z
    .locals 1

    .prologue
    .line 799
    iget-boolean v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->l:Z

    return v0
.end method

.method public isConfigedInSDK(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z
    .locals 2
    .parameter

    .prologue
    .line 659
    if-nez p1, :cond_0

    .line 660
    const/4 v0, 0x0

    .line 662
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->s:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isDefaultShareComment()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->d:Z

    return v0
.end method

.method public isDefaultShareLocation()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->c:Z

    return v0
.end method

.method public isShareMail()Z
    .locals 1

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->k:Z

    return v0
.end method

.method public isShareSms()Z
    .locals 1

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->j:Z

    return v0
.end method

.method public isShowToast()Z
    .locals 1

    .prologue
    .line 776
    iget-boolean v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->a:Z

    return v0
.end method

.method public isSyncUserInfo()Z
    .locals 1

    .prologue
    .line 425
    iget-boolean v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->q:Z

    return v0
.end method

.method public openToast()V
    .locals 1

    .prologue
    .line 767
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->a:Z

    .line 768
    return-void
.end method

.method public varargs removePlatform([Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 4
    .parameter

    .prologue
    .line 595
    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    .line 604
    :cond_0
    return-void

    .line 599
    :cond_1
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 600
    sget-object v3, Lcom/umeng/socialize/bean/SocializeConfig;->x:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 601
    sget-object v3, Lcom/umeng/socialize/bean/SocializeConfig;->x:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public removeSsoHandler(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 2
    .parameter

    .prologue
    .line 697
    invoke-static {p1}, Lcom/umeng/socialize/utils/SocializeUtils;->isValidPlatform(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->f:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->getReqCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 700
    :cond_0
    return-void
.end method

.method public setCacheValidStatus(Z)V
    .locals 0
    .parameter

    .prologue
    .line 897
    iput-boolean p1, p0, Lcom/umeng/socialize/bean/SocializeConfig;->e:Z

    .line 898
    return-void
.end method

.method public setDefaultShareComment(Z)V
    .locals 0
    .parameter

    .prologue
    .line 374
    iput-boolean p1, p0, Lcom/umeng/socialize/bean/SocializeConfig;->d:Z

    .line 375
    return-void
.end method

.method public setDefaultShareLocation(Z)V
    .locals 0
    .parameter

    .prologue
    .line 364
    iput-boolean p1, p0, Lcom/umeng/socialize/bean/SocializeConfig;->c:Z

    .line 365
    return-void
.end method

.method public setMailSubject(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/umeng/socialize/bean/SocializeConfig;->m:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public setOauthDialogFollowListener(Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;)V
    .locals 0
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/umeng/socialize/bean/SocializeConfig;->r:Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;

    .line 288
    return-void
.end method

.method public varargs setPlatformOrder([Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 615
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_2

    .line 616
    :cond_0
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->w:[Ljava/lang/String;

    .line 624
    :cond_1
    return-void

    .line 619
    :cond_2
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/umeng/socialize/bean/SocializeConfig;->w:[Ljava/lang/String;

    .line 621
    array-length v3, p1

    move v1, v0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, p1, v0

    .line 622
    sget-object v5, Lcom/umeng/socialize/bean/SocializeConfig;->w:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v4}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v1

    .line 621
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0
.end method

.method public varargs setPlatformOrder([Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 633
    sput-object p1, Lcom/umeng/socialize/bean/SocializeConfig;->w:[Ljava/lang/String;

    .line 634
    return-void
.end method

.method public varargs setPlatforms([Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 4
    .parameter

    .prologue
    .line 578
    iget-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 579
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 580
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_1

    .line 586
    :cond_0
    return-void

    .line 580
    :cond_1
    aget-object v2, p1, v0

    .line 581
    invoke-static {v2}, Lcom/umeng/socialize/utils/SocializeUtils;->isValidPlatform(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 582
    iget-object v3, p0, Lcom/umeng/socialize/bean/SocializeConfig;->u:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setShareMail(Z)V
    .locals 2
    .parameter

    .prologue
    .line 347
    iput-boolean p1, p0, Lcom/umeng/socialize/bean/SocializeConfig;->k:Z

    .line 349
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->EMAIL:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v0

    .line 350
    if-eqz p1, :cond_1

    sget-object v1, Lcom/umeng/socialize/bean/SocializeConfig;->s:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 351
    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->p:Lcom/umeng/socialize/bean/CustomPlatform;

    invoke-static {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->a(Lcom/umeng/socialize/bean/SnsPlatform;)V

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    if-nez p1, :cond_0

    sget-object v1, Lcom/umeng/socialize/bean/SocializeConfig;->s:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    sget-object v1, Lcom/umeng/socialize/bean/SocializeConfig;->s:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setShareSms(Z)V
    .locals 2
    .parameter

    .prologue
    .line 321
    iput-boolean p1, p0, Lcom/umeng/socialize/bean/SocializeConfig;->j:Z

    .line 323
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SMS:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    if-eqz p1, :cond_1

    sget-object v1, Lcom/umeng/socialize/bean/SocializeConfig;->s:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 325
    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->o:Lcom/umeng/socialize/bean/CustomPlatform;

    invoke-static {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->a(Lcom/umeng/socialize/bean/SnsPlatform;)V

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    if-nez p1, :cond_0

    sget-object v1, Lcom/umeng/socialize/bean/SocializeConfig;->s:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    sget-object v1, Lcom/umeng/socialize/bean/SocializeConfig;->s:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setSinaCallbackUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 810
    iput-object p1, p0, Lcom/umeng/socialize/bean/SocializeConfig;->n:Ljava/lang/String;

    .line 811
    return-void
.end method

.method public setSsoHandler(Lcom/umeng/socialize/sso/UMSsoHandler;)V
    .locals 4
    .parameter

    .prologue
    .line 674
    if-nez p1, :cond_1

    .line 675
    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->b:Ljava/lang/String;

    const-string v1, "ssoHander is null"

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 679
    :cond_1
    invoke-virtual {p1}, Lcom/umeng/socialize/sso/UMSsoHandler;->getRequstCode()I

    move-result v0

    .line 680
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#### set sso handler, code = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    sget-object v1, Lcom/umeng/socialize/bean/SocializeConfig;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 684
    invoke-virtual {p1}, Lcom/umeng/socialize/sso/UMSsoHandler;->build()Lcom/umeng/socialize/bean/CustomPlatform;

    move-result-object v0

    .line 685
    if-eqz v0, :cond_0

    .line 686
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/bean/SocializeConfig;->addCustomPlatform(Lcom/umeng/socialize/bean/CustomPlatform;)V

    goto :goto_0
.end method

.method public supportAppPlatform(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 401
    if-eqz p4, :cond_1

    .line 403
    invoke-static {p1, p2, p3}, Lcom/umeng/socialize/controller/a;->a(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)Lcom/umeng/socialize/bean/CustomPlatform;

    move-result-object v0

    .line 404
    iget-object v1, p0, Lcom/umeng/socialize/bean/SocializeConfig;->v:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 405
    invoke-static {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->a(Lcom/umeng/socialize/bean/SnsPlatform;)V

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/umeng/socialize/controller/a;->a(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)Lcom/umeng/socialize/bean/CustomPlatform;

    move-result-object v0

    .line 411
    if-eqz v0, :cond_0

    .line 412
    sget-object v1, Lcom/umeng/socialize/bean/SocializeConfig;->s:Ljava/util/Map;

    iget-object v2, v0, Lcom/umeng/socialize/bean/CustomPlatform;->mKeyword:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    sget-object v1, Lcom/umeng/socialize/bean/SocializeConfig;->s:Ljava/util/Map;

    iget-object v0, v0, Lcom/umeng/socialize/bean/CustomPlatform;->mKeyword:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
