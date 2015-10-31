.class public Lcom/tencent/sdkutil/DataStorage;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field static sessionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/tauth/Tencent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/sdkutil/DataStorage;->sessionMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTencentInstance(Ljava/lang/String;)Lcom/tencent/tauth/Tencent;
    .locals 1
    .parameter

    .prologue
    .line 25
    sget-object v0, Lcom/tencent/sdkutil/DataStorage;->sessionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    sget-object v0, Lcom/tencent/sdkutil/DataStorage;->sessionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tauth/Tencent;

    .line 28
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasTencentInstance(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 19
    sget-object v0, Lcom/tencent/sdkutil/DataStorage;->sessionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    const/4 v0, 0x1

    .line 22
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setTencentInstance(Ljava/lang/String;Lcom/tencent/tauth/Tencent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 14
    sget-object v0, Lcom/tencent/sdkutil/DataStorage;->sessionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    return-void
.end method
