.class public Lcom/tencent/open/HttpStatusException;
.super Ljava/lang/Exception;
.source "ProGuard"


# static fields
.field public static final ERROR_INFO:Ljava/lang/String; = "http status code error:"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method
