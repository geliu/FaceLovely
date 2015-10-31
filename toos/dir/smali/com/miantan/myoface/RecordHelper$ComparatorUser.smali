.class public Lcom/miantan/myoface/RecordHelper$ComparatorUser;
.super Ljava/lang/Object;
.source "RecordHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miantan/myoface/RecordHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ComparatorUser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miantan/myoface/RecordHelper;


# direct methods
.method public constructor <init>(Lcom/miantan/myoface/RecordHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/miantan/myoface/RecordHelper$ComparatorUser;->this$0:Lcom/miantan/myoface/RecordHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 363
    move-object v1, p1

    check-cast v1, Lorg/json/JSONObject;

    .local v1, person0:Lorg/json/JSONObject;
    move-object v2, p2

    .line 364
    check-cast v2, Lorg/json/JSONObject;

    .line 367
    .local v2, person1:Lorg/json/JSONObject;
    const/4 v3, 0x0

    .line 368
    .local v3, recordid0:I
    const/4 v4, 0x0

    .line 370
    .local v4, recordid1:I
    :try_start_0
    const-string v5, "id"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 371
    const-string v5, "id"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 377
    :goto_0
    if-gez v3, :cond_0

    neg-int v3, v3

    .line 378
    :cond_0
    if-gez v4, :cond_1

    neg-int v4, v4

    .line 380
    :cond_1
    if-ge v3, v4, :cond_2

    .line 381
    const/4 v5, -0x1

    .line 383
    :goto_1
    return v5

    .line 372
    :catch_0
    move-exception v0

    .line 374
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 383
    .end local v0           #e:Lorg/json/JSONException;
    :cond_2
    const/4 v5, 0x1

    goto :goto_1
.end method
