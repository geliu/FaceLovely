.class public Lcom/tencent/connect/a/b;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static b:Ljava/lang/String;


# instance fields
.field a:Lcom/tencent/jsutil/JsConfig;

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "0"

    sput-object v0, Lcom/tencent/connect/a/b;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/tencent/connect/a/b;->c:Landroid/content/Context;

    .line 34
    iget-object v0, p0, Lcom/tencent/connect/a/b;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/jsutil/JsConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/jsutil/JsConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/connect/a/b;->a:Lcom/tencent/jsutil/JsConfig;

    .line 35
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tencent/connect/a/b;->a:Lcom/tencent/jsutil/JsConfig;

    invoke-virtual {v0}, Lcom/tencent/jsutil/JsConfig;->getConfig()Lorg/json/JSONObject;

    move-result-object v0

    .line 47
    :try_start_0
    const-string v1, "frequency"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/tencent/connect/a/b;->a:Lcom/tencent/jsutil/JsConfig;

    invoke-virtual {v4}, Lcom/tencent/jsutil/JsConfig;->getLastUpdateTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    div-long/2addr v2, v4

    .line 57
    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 51
    :catch_1
    move-exception v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/tencent/connect/a/b;->a:Lcom/tencent/jsutil/JsConfig;

    invoke-virtual {v0}, Lcom/tencent/jsutil/JsConfig;->getJsVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/connect/a/b;->b:Ljava/lang/String;

    .line 63
    sget-object v0, Lcom/tencent/connect/a/b;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 64
    const-string v0, "0"

    sput-object v0, Lcom/tencent/connect/a/b;->b:Ljava/lang/String;

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/connect/a/b;->b()V

    goto :goto_0
.end method

.method public a(Ljava/io/File;)Z
    .locals 2
    .parameter

    .prologue
    .line 143
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/connect/a/b;->a:Lcom/tencent/jsutil/JsConfig;

    invoke-virtual {v1}, Lcom/tencent/jsutil/JsConfig;->getDirZipTemp()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/tencent/connect/a/a;->a(Ljava/io/File;Ljava/io/File;)Z

    .line 144
    iget-object v0, p0, Lcom/tencent/connect/a/b;->a:Lcom/tencent/jsutil/JsConfig;

    invoke-virtual {v0}, Lcom/tencent/jsutil/JsConfig;->getDirZipTemp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/sdkutil/Security;->verify(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 75
    const-string v0, "2.0"

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://s.p.qq.com/pub/check_bizup?qver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&hver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tencent/connect/a/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&pf=3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&biz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "107"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&uin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {v0}, Lcom/tencent/sdkutil/HttpUtils;->getFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    if-nez v0, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 89
    const-string v0, "r"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 90
    if-nez v0, :cond_0

    .line 91
    const-string v0, "type"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 92
    if-lez v0, :cond_0

    .line 93
    const-string v0, "url"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/connect/a/b;->a:Lcom/tencent/jsutil/JsConfig;

    invoke-virtual {v1}, Lcom/tencent/jsutil/JsConfig;->getDirZipTemp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "js.zip"

    invoke-static {v0, v1, v2}, Lcom/tencent/connect/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/tencent/connect/a/b;->a:Lcom/tencent/jsutil/JsConfig;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/jsutil/JsConfig;->setLastUpdateTime(J)V

    .line 100
    iget-object v0, p0, Lcom/tencent/connect/a/b;->a:Lcom/tencent/jsutil/JsConfig;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/connect/a/b;->a:Lcom/tencent/jsutil/JsConfig;

    invoke-virtual {v3}, Lcom/tencent/jsutil/JsConfig;->getDirZipTemp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "js.zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/jsutil/JsConfig;->readConfigFromZip(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_0

    .line 104
    iget-object v1, p0, Lcom/tencent/connect/a/b;->a:Lcom/tencent/jsutil/JsConfig;

    const-string v2, "version"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/jsutil/JsConfig;->setJsVersion(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/tencent/connect/a/b;->a:Lcom/tencent/jsutil/JsConfig;

    const-string v2, "frequency"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/jsutil/JsConfig;->setFrequency(J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public c()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 124
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/connect/a/b;->a:Lcom/tencent/jsutil/JsConfig;

    invoke-virtual {v3}, Lcom/tencent/jsutil/JsConfig;->getDirZipTemp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "js.zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v0

    .line 128
    :cond_1
    invoke-virtual {p0, v1}, Lcom/tencent/connect/a/b;->a(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/connect/a/b;->a:Lcom/tencent/jsutil/JsConfig;

    invoke-virtual {v2}, Lcom/tencent/jsutil/JsConfig;->getDirJsRoot()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/tencent/connect/a/a;->a(Ljava/io/File;Ljava/io/File;)Z

    .line 131
    iget-object v0, p0, Lcom/tencent/connect/a/b;->a:Lcom/tencent/jsutil/JsConfig;

    invoke-virtual {v0}, Lcom/tencent/jsutil/JsConfig;->getDirZipTemp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/connect/a/a;->a(Ljava/lang/String;)Z

    .line 132
    const/4 v0, 0x1

    goto :goto_0
.end method
