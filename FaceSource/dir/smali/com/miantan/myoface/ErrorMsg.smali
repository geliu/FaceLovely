.class public Lcom/miantan/myoface/ErrorMsg;
.super Ljava/lang/Object;
.source "ErrorMsg.java"


# static fields
.field public static final CHINESE:I = 0x0

.field public static final ENGLISH:I = 0x1

.field public static final ERR_NET_UNCONNECTED:I = 0x1

.field public static final ERR_NO_ERROR:I = 0x0

.field public static final ERR_NO_PICTURE:I = 0x4

.field public static final ERR_SDCARD_UNINSTALL:I = 0x2

.field public static final ERR_WX_NO_INSTALL:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorMsg(II)Ljava/lang/String;
    .locals 1
    .parameter "lan"
    .parameter "errorCode"

    .prologue
    .line 49
    if-nez p0, :cond_0

    .line 50
    invoke-static {p1}, Lcom/miantan/myoface/ErrorMsg;->getErrorMsgCh(I)Ljava/lang/String;

    move-result-object v0

    .line 55
    :goto_0
    return-object v0

    .line 51
    :cond_0
    const/4 v0, 0x1

    if-ne v0, p0, :cond_1

    .line 52
    invoke-static {p1}, Lcom/miantan/myoface/ErrorMsg;->getErrorMsgEn(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 55
    :cond_1
    const-string v0, "Unkown Language."

    goto :goto_0
.end method

.method public static getErrorMsgCh(I)Ljava/lang/String;
    .locals 1
    .parameter "errorCode"

    .prologue
    .line 32
    packed-switch p0, :pswitch_data_0

    .line 44
    const-string v0, "\u672a\u77e5\u9519\u8bef!"

    :goto_0
    return-object v0

    .line 34
    :pswitch_0
    const-string v0, "\u6210\u529f!"

    goto :goto_0

    .line 36
    :pswitch_1
    const-string v0, "\u7f51\u7edc\u4e3a\u94fe\u63a5!"

    goto :goto_0

    .line 38
    :pswitch_2
    const-string v0, "\u672a\u63d2\u5165SD\u5361!"

    goto :goto_0

    .line 40
    :pswitch_3
    const-string v0, "\u672a\u5b89\u88c5\u5fae\u4fe1!"

    goto :goto_0

    .line 42
    :pswitch_4
    const-string v0, "\u6ca1\u6709\u76f8\u7247\uff01"

    goto :goto_0

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getErrorMsgEn(I)Ljava/lang/String;
    .locals 1
    .parameter "errorCode"

    .prologue
    .line 15
    packed-switch p0, :pswitch_data_0

    .line 27
    const-string v0, "Unkowned Error."

    :goto_0
    return-object v0

    .line 17
    :pswitch_0
    const-string v0, "Success."

    goto :goto_0

    .line 19
    :pswitch_1
    const-string v0, "Can not connect Internet."

    goto :goto_0

    .line 21
    :pswitch_2
    const-string v0, "Please install SD Card."

    goto :goto_0

    .line 23
    :pswitch_3
    const-string v0, "Please install WeChart."

    goto :goto_0

    .line 25
    :pswitch_4
    const-string v0, "No Picture."

    goto :goto_0

    .line 15
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
