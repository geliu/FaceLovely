.class public Lcom/facebook/ResContainer;
.super Ljava/lang/Object;
.source "ResContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ResContainer$ResType;,
        Lcom/facebook/ResContainer$SocializeResource;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mResContainer:Lcom/facebook/ResContainer;


# instance fields
.field private mResources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/ResContainer$SocializeResource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 86
    sput-object v0, Lcom/facebook/ResContainer;->mContext:Landroid/content/Context;

    .line 90
    sput-object v0, Lcom/facebook/ResContainer;->mResContainer:Lcom/facebook/ResContainer;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ResContainer;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    .line 99
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .locals 0
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/ResContainer$SocializeResource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p2, resources:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ResContainer$SocializeResource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p2, p0, Lcom/facebook/ResContainer;->mResources:Ljava/util/Map;

    .line 109
    sput-object p1, Lcom/facebook/ResContainer;->mContext:Landroid/content/Context;

    .line 110
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/facebook/ResContainer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getResContainer()Lcom/facebook/ResContainer;
    .locals 2

    .prologue
    .line 139
    sget-object v0, Lcom/facebook/ResContainer;->mResContainer:Lcom/facebook/ResContainer;

    if-nez v0, :cond_0

    .line 140
    const-string v0, "ResContainer"

    const-string v1, "### \ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffdResContainer [Facebook]."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    sget-object v0, Lcom/facebook/ResContainer;->mResContainer:Lcom/facebook/ResContainer;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)Lcom/facebook/ResContainer;
    .locals 2
    .parameter "context"

    .prologue
    .line 120
    sget-object v0, Lcom/facebook/ResContainer;->mResContainer:Lcom/facebook/ResContainer;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 121
    const-class v1, Lcom/facebook/ResContainer;

    monitor-enter v1

    .line 122
    :try_start_0
    new-instance v0, Lcom/facebook/ResContainer;

    invoke-direct {v0, p0}, Lcom/facebook/ResContainer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/facebook/ResContainer;->mResContainer:Lcom/facebook/ResContainer;

    .line 121
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :cond_0
    sget-object v0, Lcom/facebook/ResContainer;->mResContainer:Lcom/facebook/ResContainer;

    return-object v0

    .line 121
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized batch()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/ResContainer$SocializeResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/facebook/ResContainer;->mResources:Ljava/util/Map;

    if-nez v3, :cond_0

    .line 191
    iget-object v3, p0, Lcom/facebook/ResContainer;->mResources:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :goto_0
    monitor-exit p0

    return-object v3

    .line 193
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/facebook/ResContainer;->mResources:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 194
    .local v1, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 200
    iget-object v3, p0, Lcom/facebook/ResContainer;->mResources:Ljava/util/Map;

    goto :goto_0

    .line 194
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 195
    .local v0, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/facebook/ResContainer;->mResources:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ResContainer$SocializeResource;

    .line 196
    .local v2, resource:Lcom/facebook/ResContainer$SocializeResource;
    sget-object v4, Lcom/facebook/ResContainer;->mContext:Landroid/content/Context;

    iget-object v5, v2, Lcom/facebook/ResContainer$SocializeResource;->mType:Lcom/facebook/ResContainer$ResType;

    iget-object v6, v2, Lcom/facebook/ResContainer$SocializeResource;->mName:Ljava/lang/String;

    invoke-virtual {p0, v4, v5, v6}, Lcom/facebook/ResContainer;->getResourceId(Landroid/content/Context;Lcom/facebook/ResContainer$ResType;Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/facebook/ResContainer$SocializeResource;->mId:I

    .line 197
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/facebook/ResContainer$SocializeResource;->mIsCompleted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 190
    .end local v0           #key:Ljava/lang/String;
    .end local v1           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2           #resource:Lcom/facebook/ResContainer$SocializeResource;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getResourceId(Landroid/content/Context;Lcom/facebook/ResContainer$ResType;Ljava/lang/String;)I
    .locals 6
    .parameter "context"
    .parameter "type"
    .parameter "name"

    .prologue
    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 154
    .local v1, resources:Landroid/content/res/Resources;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, packageName:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/facebook/ResContainer$ResType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p3, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 156
    .local v2, rid:I
    if-gtz v2, :cond_0

    .line 157
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffdID\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd:(packageName="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 157
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 160
    :cond_0
    return v2
.end method

.method public getResourceId(Lcom/facebook/ResContainer$ResType;Ljava/lang/String;)I
    .locals 6
    .parameter "type"
    .parameter "name"

    .prologue
    .line 171
    sget-object v3, Lcom/facebook/ResContainer;->mContext:Landroid/content/Context;

    if-nez v3, :cond_1

    .line 172
    const-string v3, "###"

    const-string v4, "### ResContainer\'s mContext is null. "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v2, 0x0

    .line 182
    :cond_0
    return v2

    .line 175
    :cond_1
    sget-object v3, Lcom/facebook/ResContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 176
    .local v1, resources:Landroid/content/res/Resources;
    sget-object v3, Lcom/facebook/ResContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, packageName:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/facebook/ResContainer$ResType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 178
    .local v2, rid:I
    if-gtz v2, :cond_0

    .line 179
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffdID\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd:(packageName="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 179
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
