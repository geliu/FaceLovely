.class public enum Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PostType;
.super Ljava/lang/Enum;
.source "UMFacebookHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/facebook/controller/UMFacebookHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "PostType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PostType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PostType;

.field public static final enum FEED:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PostType;

.field public static final enum PHOTO:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PostType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 126
    new-instance v0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PostType$1;

    const-string v1, "FEED"

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PostType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PostType;->FEED:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PostType;

    .line 132
    new-instance v0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PostType$2;

    const-string v1, "PHOTO"

    invoke-direct {v0, v1, v3}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PostType$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PostType;->PHOTO:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PostType;

    .line 125
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PostType;

    sget-object v1, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PostType;->FEED:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PostType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PostType;->PHOTO:Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PostType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PostType;->ENUM$VALUES:[Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PostType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/umeng/socialize/facebook/controller/UMFacebookHandler$PostType;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PostType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PostType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PostType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PostType;

    return-object v0
.end method

.method public static values()[Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PostType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PostType;->ENUM$VALUES:[Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PostType;

    array-length v1, v0

    new-array v2, v1, [Lcom/umeng/socialize/facebook/controller/UMFacebookHandler$PostType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
