.class public Lcom/umeng/socialize/facebook/controller/utils/TokenUtil;
.super Ljava/lang/Object;
.source "TokenUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isTokenValid(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    .line 43
    sget-object v6, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FACEBOOK:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {p0, v6}, Lcom/umeng/socialize/utils/OauthHelper;->getAccessToken(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)[Ljava/lang/String;

    move-result-object v4

    .line 44
    .local v4, tokenInfo:[Ljava/lang/String;
    array-length v6, v4

    if-le v6, v5, :cond_1

    .line 45
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd"

    invoke-direct {v3, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 47
    .local v3, expiresFormat:Ljava/text/DateFormat;
    const/4 v6, 0x1

    :try_start_0
    aget-object v6, v4, v6

    invoke-virtual {v3, v6}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 48
    .local v2, expiresDate:Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 49
    .local v0, currentDate:Ljava/util/Date;
    const-string v6, "TokenUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "###  \u5f53\u524d\u65f6\u95f4: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", \u8fc7\u671f\u65f6\u95f4: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 59
    .end local v0           #currentDate:Ljava/util/Date;
    .end local v2           #expiresDate:Ljava/util/Date;
    .end local v3           #expiresFormat:Ljava/text/DateFormat;
    :goto_0
    return v5

    .line 54
    .restart local v0       #currentDate:Ljava/util/Date;
    .restart local v2       #expiresDate:Ljava/util/Date;
    .restart local v3       #expiresFormat:Ljava/text/DateFormat;
    :cond_0
    const-string v5, "TokenUtil"

    const-string v6, "#### facebook Token\u5df2\u7ecf\u8fc7\u671f, \u8bf7\u91cd\u65b0\u6388\u6743"

    invoke-static {v5, v6}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v0           #currentDate:Ljava/util/Date;
    .end local v2           #expiresDate:Ljava/util/Date;
    .end local v3           #expiresFormat:Ljava/text/DateFormat;
    :cond_1
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 55
    .restart local v3       #expiresFormat:Ljava/text/DateFormat;
    :catch_0
    move-exception v1

    .line 56
    .local v1, e:Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1
.end method

.method public static saveTokenToLocal(Landroid/content/Context;Ljava/lang/String;Ljava/util/Date;)V
    .locals 3
    .parameter "context"
    .parameter "token"
    .parameter "expiresDate"

    .prologue
    .line 26
    if-eqz p0, :cond_0

    .line 27
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 28
    .local v0, expiresFormat:Ljava/text/DateFormat;
    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, expires_in:Ljava/lang/String;
    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FACEBOOK:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {p0, v2, p1, v1}, Lcom/umeng/socialize/utils/OauthHelper;->saveAccessToken(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FACEBOOK:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {p0, v2, p1}, Lcom/umeng/socialize/utils/OauthHelper;->setUsid(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V

    .line 34
    .end local v0           #expiresFormat:Ljava/text/DateFormat;
    .end local v1           #expires_in:Ljava/lang/String;
    :cond_0
    return-void
.end method
