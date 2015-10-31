.class public Lcom/tencent/jsutil/ReportUtils;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final BERNOULLI_REPORT_URL:Ljava/lang/String; = "http://cgi.qplus.com/report/report"

.field private static final REPORT_BERNOULLI:I = 0x2

.field private static final REPORT_QQ:I = 0x0

.field private static final REPORT_TRACKCUSTOMEVENT:I = 0x1

.field private static final REPORT_URL:Ljava/lang/String; = "http://cgi.connect.qq.com/qqconnectutil/sdk"


# instance fields
.field mContext:Landroid/content/Context;

.field mEvent:Ljava/lang/String;

.field mHandler:Landroid/os/Handler;

.field mProperties:Ljava/util/Properties;

.field mQqToken:Lcom/tencent/tauth/QQToken;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/tauth/QQToken;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/tencent/jsutil/ReportUtils;->mContext:Landroid/content/Context;

    .line 20
    iput-object v0, p0, Lcom/tencent/jsutil/ReportUtils;->mQqToken:Lcom/tencent/tauth/QQToken;

    .line 21
    iput-object v0, p0, Lcom/tencent/jsutil/ReportUtils;->mProperties:Ljava/util/Properties;

    .line 22
    iput-object v0, p0, Lcom/tencent/jsutil/ReportUtils;->mEvent:Ljava/lang/String;

    .line 33
    new-instance v0, Lcom/tencent/jsutil/ReportUtils$1;

    invoke-direct {v0, p0}, Lcom/tencent/jsutil/ReportUtils$1;-><init>(Lcom/tencent/jsutil/ReportUtils;)V

    iput-object v0, p0, Lcom/tencent/jsutil/ReportUtils;->mHandler:Landroid/os/Handler;

    .line 27
    iput-object p1, p0, Lcom/tencent/jsutil/ReportUtils;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/tencent/jsutil/ReportUtils;->mQqToken:Lcom/tencent/tauth/QQToken;

    .line 29
    return-void
.end method

.method public static reportBernoulli(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 173
    const-string v1, "appid_for_getting_config"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v1, "strValue"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v1, "nValue"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v1, "qver"

    const-string v2, "2.0"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-eqz v1, :cond_0

    .line 178
    const-string v1, "elt"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 181
    :cond_0
    new-instance v1, Lcom/tencent/jsutil/ReportUtils$2;

    invoke-direct {v1, p0, v0}, Lcom/tencent/jsutil/ReportUtils$2;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-virtual {v1}, Lcom/tencent/jsutil/ReportUtils$2;->start()V

    .line 191
    return-void
.end method


# virtual methods
.method public cgiReport(Ljava/lang/String;JJJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 197
    invoke-static {}, Lcom/tencent/open/cgireport/ReportManager;->getInstance()Lcom/tencent/open/cgireport/ReportManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/jsutil/ReportUtils;->mContext:Landroid/content/Context;

    move-object v2, p1

    move-wide v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-virtual/range {v0 .. v12}, Lcom/tencent/open/cgireport/ReportManager;->report(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public getProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Properties;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 66
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 67
    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    return-object v0
.end method

.method public reportBernoulli(Ljava/lang/String;JLjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 151
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 152
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 153
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 154
    const-string v2, "reportId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v2, "appId"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v2, "costTime"

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 157
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 158
    iget-object v1, p0, Lcom/tencent/jsutil/ReportUtils;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 159
    return-void
.end method

.method public reportError(Ljava/lang/String;)V
    .locals 1
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/tencent/jsutil/ReportUtils;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tencent/mta/TencentStat;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public reportQQ(Ljava/lang/String;)V
    .locals 2
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/tencent/jsutil/ReportUtils;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 91
    return-void
.end method

.method public setSessionTimoutMillis(I)V
    .locals 0
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 166
    invoke-static {p1}, Lcom/tencent/stat/StatConfig;->setSessionTimoutMillis(I)V

    .line 167
    return-void
.end method

.method public startMonitor(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/tencent/jsutil/ReportUtils;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/tencent/mta/TencentStat;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public startQQ4Connect(Ljava/lang/String;)V
    .locals 4
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 76
    .line 77
    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const/4 v0, 0x1

    .line 82
    :goto_0
    iget-object v1, p0, Lcom/tencent/jsutil/ReportUtils;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/jsutil/ReportUtils;->mQqToken:Lcom/tencent/tauth/QQToken;

    const-string v3, "http://cgi.connect.qq.com/qqconnectutil/sdk"

    invoke-static {v1, v2, v0, v3}, Lcom/tencent/mta/TencentStat;->a(Landroid/content/Context;Lcom/tencent/tauth/QQToken;ZLjava/lang/String;)V

    .line 83
    return-void

    .line 80
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public trackCustomBeginKVEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/tencent/jsutil/ReportUtils;->getProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    .line 112
    iput-object v0, p0, Lcom/tencent/jsutil/ReportUtils;->mProperties:Ljava/util/Properties;

    .line 113
    iput-object p3, p0, Lcom/tencent/jsutil/ReportUtils;->mEvent:Ljava/lang/String;

    .line 114
    iget-object v1, p0, Lcom/tencent/jsutil/ReportUtils;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, p3}, Lcom/tencent/mta/TencentStat;->b(Landroid/content/Context;Ljava/util/Properties;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public trackCustomEndKVEvent()V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 119
    iget-object v0, p0, Lcom/tencent/jsutil/ReportUtils;->mProperties:Ljava/util/Properties;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/jsutil/ReportUtils;->mEvent:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/tencent/jsutil/ReportUtils;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/jsutil/ReportUtils;->mProperties:Ljava/util/Properties;

    iget-object v2, p0, Lcom/tencent/jsutil/ReportUtils;->mEvent:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tencent/mta/TencentStat;->c(Landroid/content/Context;Ljava/util/Properties;Ljava/lang/String;)V

    .line 121
    iput-object v3, p0, Lcom/tencent/jsutil/ReportUtils;->mProperties:Ljava/util/Properties;

    .line 122
    iput-object v3, p0, Lcom/tencent/jsutil/ReportUtils;->mEvent:Ljava/lang/String;

    .line 124
    :cond_0
    return-void
.end method

.method public trackCustomEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 130
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 131
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 132
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 133
    const-string v2, "eventId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v2, "array"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 136
    iget-object v1, p0, Lcom/tencent/jsutil/ReportUtils;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 137
    return-void
.end method

.method public trackCustomKVEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/tencent/jsutil/ReportUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/jsutil/ReportUtils;->getProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lcom/tencent/mta/TencentStat;->a(Landroid/content/Context;Ljava/util/Properties;Ljava/lang/String;)V

    .line 104
    return-void
.end method
