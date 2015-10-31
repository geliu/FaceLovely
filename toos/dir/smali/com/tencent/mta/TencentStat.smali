.class public Lcom/tencent/mta/TencentStat;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/tencent/mta/TencentStat;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mta/TencentStat;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs a(Landroid/content/Context;Lcom/tencent/tauth/QQToken;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-static {p0, p1}, Lcom/tencent/mta/TencentStat;->b(Landroid/content/Context;Lcom/tencent/tauth/QQToken;)V

    .line 74
    invoke-static {p0, p2, p3}, Lcom/tencent/stat/StatService;->trackCustomEvent(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/tencent/tauth/QQToken;ZLjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-static {p0, p1}, Lcom/tencent/mta/TencentStat;->b(Landroid/content/Context;Lcom/tencent/tauth/QQToken;)V

    .line 44
    invoke-virtual {p1}, Lcom/tencent/tauth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v0

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Aqc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {p2}, Lcom/tencent/stat/StatConfig;->setAutoExceptionCaught(Z)V

    .line 47
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/tencent/stat/StatConfig;->setEnableSmartReporting(Z)V

    .line 48
    const/16 v1, 0x5a0

    invoke-static {v1}, Lcom/tencent/stat/StatConfig;->setSendPeriodMinutes(I)V

    .line 49
    sget-object v1, Lcom/tencent/stat/StatReportStrategy;->PERIOD:Lcom/tencent/stat/StatReportStrategy;

    invoke-static {v1}, Lcom/tencent/stat/StatConfig;->setStatSendStrategy(Lcom/tencent/stat/StatReportStrategy;)V

    .line 50
    invoke-static {p3}, Lcom/tencent/stat/StatConfig;->setStatReportUrl(Ljava/lang/String;)V

    .line 54
    :try_start_0
    const-string v1, "1.0.0"

    invoke-static {p0, v0, v1}, Lcom/tencent/stat/StatService;->startStatService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/tencent/stat/MtaSDkException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    const-string v0, "DEBUG"

    const-string v1, "MTA init Failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-static {p0, p1}, Lcom/tencent/stat/StatService;->reportError(Landroid/content/Context;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    new-instance v2, Lcom/tencent/stat/StatAppMonitor;

    invoke-direct {v2, p1}, Lcom/tencent/stat/StatAppMonitor;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 115
    const/4 v1, 0x0

    .line 118
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 120
    invoke-virtual {v0, p2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 121
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v3, v5, v3

    .line 124
    invoke-virtual {v2, v3, v4}, Lcom/tencent/stat/StatAppMonitor;->setMillisecondsConsume(J)V

    .line 125
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v0

    .line 127
    invoke-virtual {v2, v0}, Lcom/tencent/stat/StatAppMonitor;->setReturnCode(I)V

    .line 129
    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v3, v4}, Lcom/tencent/stat/StatAppMonitor;->setReqSize(J)V

    .line 131
    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v3, v4}, Lcom/tencent/stat/StatAppMonitor;->setRespSize(J)V

    .line 135
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/tencent/stat/StatAppMonitor;->setSampling(I)V

    .line 136
    if-nez v0, :cond_0

    .line 137
    sget-object v0, Lcom/tencent/mta/TencentStat;->a:Ljava/lang/String;

    const-string v3, "ping\u8fde\u63a5\u6210\u529f"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/tencent/stat/StatAppMonitor;->setResultType(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 154
    :goto_1
    invoke-static {p0, v2}, Lcom/tencent/stat/StatService;->reportAppMonitorStat(Landroid/content/Context;Lcom/tencent/stat/StatAppMonitor;)V

    .line 155
    return-void

    .line 141
    :cond_0
    :try_start_1
    sget-object v0, Lcom/tencent/mta/TencentStat;->a:Ljava/lang/String;

    const-string v3, "ping\u6d4b\u8bd5\u5931\u8d25"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Lcom/tencent/stat/StatAppMonitor;->setResultType(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    :try_start_2
    sget-object v3, Lcom/tencent/mta/TencentStat;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/tencent/stat/StatAppMonitor;->setResultType(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 151
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/Properties;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-static {p0, p2, p1}, Lcom/tencent/stat/StatService;->trackCustomKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Properties;)V

    .line 84
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/tencent/tauth/QQToken;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-virtual {p1}, Lcom/tencent/tauth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/common/OpenConfig;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/common/OpenConfig;

    move-result-object v0

    const-string v1, "Common_ta_enable"

    invoke-virtual {v0, v1}, Lcom/tencent/common/OpenConfig;->d(Ljava/lang/String;)Z

    move-result v0

    .line 31
    return v0
.end method

.method public static b(Landroid/content/Context;Lcom/tencent/tauth/QQToken;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-static {p0, p1}, Lcom/tencent/mta/TencentStat;->a(Landroid/content/Context;Lcom/tencent/tauth/QQToken;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/stat/StatConfig;->setEnableStatService(Z)V

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/stat/StatConfig;->setEnableStatService(Z)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/util/Properties;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-static {p0, p2, p1}, Lcom/tencent/stat/StatService;->trackCustomBeginKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Properties;)V

    .line 91
    return-void
.end method

.method public static c(Landroid/content/Context;Lcom/tencent/tauth/QQToken;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-static {p0, p1}, Lcom/tencent/mta/TencentStat;->b(Landroid/content/Context;Lcom/tencent/tauth/QQToken;)V

    .line 65
    invoke-virtual {p1}, Lcom/tencent/tauth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p1}, Lcom/tencent/tauth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/stat/StatService;->reportQQ(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    :cond_0
    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/util/Properties;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-static {p0, p2, p1}, Lcom/tencent/stat/StatService;->trackCustomEndKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Properties;)V

    .line 97
    return-void
.end method
