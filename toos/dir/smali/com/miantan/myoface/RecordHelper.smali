.class public Lcom/miantan/myoface/RecordHelper;
.super Ljava/lang/Object;
.source "RecordHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miantan/myoface/RecordHelper$ComparatorUser;
    }
.end annotation


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field editor:Landroid/content/SharedPreferences$Editor;

.field public listJSON:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field preferences:Landroid/content/SharedPreferences;

.field public setString:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miantan/myoface/RecordHelper;->mContext:Landroid/content/Context;

    .line 33
    const-string v0, "myoface"

    iput-object v0, p0, Lcom/miantan/myoface/RecordHelper;->LOG_TAG:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miantan/myoface/RecordHelper;->setString:Ljava/util/Set;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miantan/myoface/RecordHelper;->listJSON:Ljava/util/List;

    .line 43
    iput-object p1, p0, Lcom/miantan/myoface/RecordHelper;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method


# virtual methods
.method addRecord1(IILorg/json/JSONObject;)I
    .locals 7
    .parameter "recordid"
    .parameter "type"
    .parameter "person"

    .prologue
    const/4 v4, 0x1

    .line 173
    const/4 v3, -0x1

    .line 175
    .local v3, ret:I
    if-nez p1, :cond_1

    .line 179
    move p1, p2

    .line 180
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 181
    .local v2, json:Lorg/json/JSONObject;
    const-string v4, "id"

    invoke-virtual {v2, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 182
    const-string v4, "type"

    invoke-virtual {v2, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 183
    const-string v4, "personTagA"

    invoke-virtual {v2, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    const-string v4, "count"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 188
    iget-object v4, p0, Lcom/miantan/myoface/RecordHelper;->listJSON:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v4, Ljava/util/HashSet;

    iget-object v5, p0, Lcom/miantan/myoface/RecordHelper;->setString:Ljava/util/Set;

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lcom/miantan/myoface/RecordHelper;->setString:Ljava/util/Set;

    .line 191
    iget-object v4, p0, Lcom/miantan/myoface/RecordHelper;->setString:Ljava/util/Set;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v4, p0, Lcom/miantan/myoface/RecordHelper;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "stringset"

    iget-object v6, p0, Lcom/miantan/myoface/RecordHelper;->setString:Ljava/util/Set;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 193
    iget-object v4, p0, Lcom/miantan/myoface/RecordHelper;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .end local v2           #json:Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return v3

    .line 194
    :catch_0
    move-exception v0

    .line 196
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 201
    .end local v0           #e:Lorg/json/JSONException;
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/miantan/myoface/RecordHelper;->editRecord1(IILorg/json/JSONObject;)I

    move-result v1

    .line 202
    .local v1, editret:I
    if-ne v1, v4, :cond_0

    .line 205
    move p1, p2

    .line 206
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 207
    .restart local v2       #json:Lorg/json/JSONObject;
    const-string v4, "id"

    invoke-virtual {v2, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 208
    const-string v4, "type"

    invoke-virtual {v2, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 209
    const-string v4, "personTagA"

    invoke-virtual {v2, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    const-string v4, "count"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 214
    iget-object v4, p0, Lcom/miantan/myoface/RecordHelper;->listJSON:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    new-instance v4, Ljava/util/HashSet;

    iget-object v5, p0, Lcom/miantan/myoface/RecordHelper;->setString:Ljava/util/Set;

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lcom/miantan/myoface/RecordHelper;->setString:Ljava/util/Set;

    .line 217
    iget-object v4, p0, Lcom/miantan/myoface/RecordHelper;->setString:Ljava/util/Set;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v4, p0, Lcom/miantan/myoface/RecordHelper;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "stringset"

    iget-object v6, p0, Lcom/miantan/myoface/RecordHelper;->setString:Ljava/util/Set;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 219
    iget-object v4, p0, Lcom/miantan/myoface/RecordHelper;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 220
    .end local v2           #json:Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 222
    .restart local v0       #e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method addRecord2(IILorg/json/JSONObject;Lorg/json/JSONObject;)I
    .locals 7
    .parameter "recordid"
    .parameter "type"
    .parameter "person1"
    .parameter "person2"

    .prologue
    .line 294
    const/4 v3, -0x1

    .line 296
    .local v3, ret:I
    if-nez p1, :cond_1

    .line 300
    move p1, p2

    .line 301
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 302
    .local v2, json:Lorg/json/JSONObject;
    const-string v4, "id"

    invoke-virtual {v2, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 303
    const-string v4, "type"

    invoke-virtual {v2, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 304
    const-string v4, "personTagA"

    invoke-virtual {v2, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 305
    const-string v4, "personTagB"

    invoke-virtual {v2, v4, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 306
    const-string v4, "count"

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 310
    iget-object v4, p0, Lcom/miantan/myoface/RecordHelper;->listJSON:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    new-instance v4, Ljava/util/HashSet;

    iget-object v5, p0, Lcom/miantan/myoface/RecordHelper;->setString:Ljava/util/Set;

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lcom/miantan/myoface/RecordHelper;->setString:Ljava/util/Set;

    .line 313
    iget-object v4, p0, Lcom/miantan/myoface/RecordHelper;->setString:Ljava/util/Set;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 314
    iget-object v4, p0, Lcom/miantan/myoface/RecordHelper;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "stringset"

    iget-object v6, p0, Lcom/miantan/myoface/RecordHelper;->setString:Ljava/util/Set;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 315
    iget-object v4, p0, Lcom/miantan/myoface/RecordHelper;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    .end local v2           #json:Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return v3

    .line 316
    :catch_0
    move-exception v0

    .line 318
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 323
    .end local v0           #e:Lorg/json/JSONException;
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miantan/myoface/RecordHelper;->editRecord2(IILorg/json/JSONObject;Lorg/json/JSONObject;)I

    move-result v1

    .line 324
    .local v1, editret:I
    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 327
    move p1, p2

    .line 328
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 329
    .restart local v2       #json:Lorg/json/JSONObject;
    const-string v4, "id"

    invoke-virtual {v2, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 330
    const-string v4, "type"

    invoke-virtual {v2, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 331
    const-string v4, "personTagA"

    invoke-virtual {v2, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 332
    const-string v4, "personTagB"

    invoke-virtual {v2, v4, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 333
    const-string v4, "count"

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 337
    iget-object v4, p0, Lcom/miantan/myoface/RecordHelper;->listJSON:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    new-instance v4, Ljava/util/HashSet;

    iget-object v5, p0, Lcom/miantan/myoface/RecordHelper;->setString:Ljava/util/Set;

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lcom/miantan/myoface/RecordHelper;->setString:Ljava/util/Set;

    .line 340
    iget-object v4, p0, Lcom/miantan/myoface/RecordHelper;->setString:Ljava/util/Set;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 341
    iget-object v4, p0, Lcom/miantan/myoface/RecordHelper;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "stringset"

    iget-object v6, p0, Lcom/miantan/myoface/RecordHelper;->setString:Ljava/util/Set;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 342
    iget-object v4, p0, Lcom/miantan/myoface/RecordHelper;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 343
    .end local v2           #json:Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 345
    .restart local v0       #e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method editRecord1(IILorg/json/JSONObject;)I
    .locals 12
    .parameter "recordid"
    .parameter "type"
    .parameter "person"

    .prologue
    .line 103
    const/4 v6, -0x1

    .line 105
    .local v6, ret:I
    const/4 v1, 0x0

    .line 106
    .local v1, i:I
    const/4 v1, 0x0

    :goto_0
    iget-object v9, p0, Lcom/miantan/myoface/RecordHelper;->listJSON:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lt v1, v9, :cond_1

    .line 157
    :cond_0
    :goto_1
    iget-object v9, p0, Lcom/miantan/myoface/RecordHelper;->listJSON:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ne v1, v9, :cond_6

    .line 158
    const/4 v6, 0x1

    .line 162
    :goto_2
    return v6

    .line 110
    :cond_1
    :try_start_0
    iget-object v9, p0, Lcom/miantan/myoface/RecordHelper;->listJSON:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 111
    .local v3, json:Lorg/json/JSONObject;
    const-string v9, "id"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    if-eq v9, p1, :cond_2

    const-string v9, "id"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    neg-int v10, p1

    if-ne v9, v10, :cond_5

    .line 113
    :cond_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 114
    .local v4, json1:Lorg/json/JSONObject;
    const-string v9, "id"

    invoke-virtual {v4, v9, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 115
    const-string v9, "type"

    invoke-virtual {v4, v9, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 116
    const-string v9, "personTagA"

    invoke-virtual {v4, v9, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    const-string v9, "count"

    const/4 v10, 0x1

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 118
    iget-object v9, p0, Lcom/miantan/myoface/RecordHelper;->listJSON:Ljava/util/List;

    invoke-interface {v9, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v9, p0, Lcom/miantan/myoface/RecordHelper;->setString:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 123
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    if-eqz v9, :cond_0

    .line 125
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 127
    .local v8, str:Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 128
    .local v5, jsonremove:Lorg/json/JSONObject;
    const-string v9, "id"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    if-eq v9, p1, :cond_4

    const-string v9, "id"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    neg-int v10, p1

    if-ne v9, v10, :cond_3

    .line 131
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 133
    new-instance v9, Ljava/util/HashSet;

    iget-object v10, p0, Lcom/miantan/myoface/RecordHelper;->setString:Ljava/util/Set;

    invoke-direct {v9, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v9, p0, Lcom/miantan/myoface/RecordHelper;->setString:Ljava/util/Set;

    .line 134
    iget-object v9, p0, Lcom/miantan/myoface/RecordHelper;->setString:Ljava/util/Set;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v9, p0, Lcom/miantan/myoface/RecordHelper;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v10, "stringset"

    iget-object v11, p0, Lcom/miantan/myoface/RecordHelper;->setString:Ljava/util/Set;

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 136
    iget-object v9, p0, Lcom/miantan/myoface/RecordHelper;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 138
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 139
    .local v7, ss:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/miantan/myoface/RecordHelper;->preferences:Landroid/content/SharedPreferences;

    const-string v10, "stringset"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    goto/16 :goto_1

    .line 143
    .end local v5           #jsonremove:Lorg/json/JSONObject;
    .end local v7           #ss:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8           #str:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 145
    .local v0, e:Lorg/json/JSONException;
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 151
    .end local v0           #e:Lorg/json/JSONException;
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3           #json:Lorg/json/JSONObject;
    .end local v4           #json1:Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 153
    .restart local v0       #e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 106
    .end local v0           #e:Lorg/json/JSONException;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 160
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_2
.end method

.method editRecord2(IILorg/json/JSONObject;Lorg/json/JSONObject;)I
    .locals 11
    .parameter "recordid"
    .parameter "type"
    .parameter "person1"
    .parameter "person2"

    .prologue
    .line 232
    const/4 v6, -0x1

    .line 234
    .local v6, ret:I
    const/4 v1, 0x0

    .line 235
    .local v1, i:I
    const/4 v1, 0x0

    :goto_0
    iget-object v8, p0, Lcom/miantan/myoface/RecordHelper;->listJSON:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lt v1, v8, :cond_1

    .line 283
    :cond_0
    :goto_1
    iget-object v8, p0, Lcom/miantan/myoface/RecordHelper;->listJSON:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ne v1, v8, :cond_6

    .line 284
    const/4 v6, 0x1

    .line 288
    :goto_2
    return v6

    .line 239
    :cond_1
    :try_start_0
    iget-object v8, p0, Lcom/miantan/myoface/RecordHelper;->listJSON:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 240
    .local v3, json:Lorg/json/JSONObject;
    const-string v8, "id"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    if-eq v8, p1, :cond_2

    const-string v8, "id"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    neg-int v9, p1

    if-ne v8, v9, :cond_5

    .line 242
    :cond_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 243
    .local v4, json1:Lorg/json/JSONObject;
    const-string v8, "id"

    invoke-virtual {v4, v8, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 244
    const-string v8, "type"

    invoke-virtual {v4, v8, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 245
    const-string v8, "personTagA"

    invoke-virtual {v4, v8, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    const-string v8, "personTagB"

    invoke-virtual {v4, v8, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    const-string v8, "count"

    const/4 v9, 0x2

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 249
    iget-object v8, p0, Lcom/miantan/myoface/RecordHelper;->listJSON:Ljava/util/List;

    invoke-interface {v8, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v8, p0, Lcom/miantan/myoface/RecordHelper;->setString:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 254
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    if-eqz v8, :cond_0

    .line 256
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 258
    .local v7, str:Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 259
    .local v5, jsonremove:Lorg/json/JSONObject;
    const-string v8, "id"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    if-eq v8, p1, :cond_4

    const-string v8, "id"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    neg-int v9, p1

    if-ne v8, v9, :cond_3

    .line 262
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 264
    new-instance v8, Ljava/util/HashSet;

    iget-object v9, p0, Lcom/miantan/myoface/RecordHelper;->setString:Ljava/util/Set;

    invoke-direct {v8, v9}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v8, p0, Lcom/miantan/myoface/RecordHelper;->setString:Ljava/util/Set;

    .line 265
    iget-object v8, p0, Lcom/miantan/myoface/RecordHelper;->setString:Ljava/util/Set;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object v8, p0, Lcom/miantan/myoface/RecordHelper;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v9, "stringset"

    iget-object v10, p0, Lcom/miantan/myoface/RecordHelper;->setString:Ljava/util/Set;

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 267
    iget-object v8, p0, Lcom/miantan/myoface/RecordHelper;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 270
    .end local v5           #jsonremove:Lorg/json/JSONObject;
    .end local v7           #str:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 272
    .local v0, e:Lorg/json/JSONException;
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 278
    .end local v0           #e:Lorg/json/JSONException;
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3           #json:Lorg/json/JSONObject;
    .end local v4           #json1:Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 280
    .restart local v0       #e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 235
    .end local v0           #e:Lorg/json/JSONException;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 286
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_2
.end method

.method getJSONObjectById(I)Lorg/json/JSONObject;
    .locals 6
    .parameter "id"

    .prologue
    .line 390
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 391
    .local v3, person:Lorg/json/JSONObject;
    const/4 v1, 0x0

    .line 392
    .local v1, i:I
    const/4 v1, 0x0

    :goto_0
    iget-object v5, p0, Lcom/miantan/myoface/RecordHelper;->listJSON:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v1, v5, :cond_1

    .line 408
    :goto_1
    iget-object v5, p0, Lcom/miantan/myoface/RecordHelper;->listJSON:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v1, v5, :cond_0

    .line 409
    const/4 v3, 0x0

    .line 410
    .end local v3           #person:Lorg/json/JSONObject;
    :cond_0
    return-object v3

    .line 396
    .restart local v3       #person:Lorg/json/JSONObject;
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/miantan/myoface/RecordHelper;->listJSON:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 397
    .local v2, json:Lorg/json/JSONObject;
    const-string v5, "id"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 398
    .local v4, recordid:I
    if-ne v4, p1, :cond_2

    .line 400
    move-object v3, v2

    goto :goto_1

    .line 403
    .end local v2           #json:Lorg/json/JSONObject;
    .end local v4           #recordid:I
    :catch_0
    move-exception v0

    .line 405
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 392
    .end local v0           #e:Lorg/json/JSONException;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 356
    new-instance v0, Lcom/miantan/myoface/RecordHelper$ComparatorUser;

    invoke-direct {v0, p0}, Lcom/miantan/myoface/RecordHelper$ComparatorUser;-><init>(Lcom/miantan/myoface/RecordHelper;)V

    .line 357
    .local v0, comparator:Lcom/miantan/myoface/RecordHelper$ComparatorUser;
    iget-object v1, p0, Lcom/miantan/myoface/RecordHelper;->listJSON:Ljava/util/List;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 358
    iget-object v1, p0, Lcom/miantan/myoface/RecordHelper;->listJSON:Ljava/util/List;

    return-object v1
.end method

.method public init()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 50
    iget-object v8, p0, Lcom/miantan/myoface/RecordHelper;->listJSON:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 51
    iget-object v8, p0, Lcom/miantan/myoface/RecordHelper;->mContext:Landroid/content/Context;

    const-string v9, "records"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, p0, Lcom/miantan/myoface/RecordHelper;->preferences:Landroid/content/SharedPreferences;

    .line 52
    iget-object v8, p0, Lcom/miantan/myoface/RecordHelper;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    iput-object v8, p0, Lcom/miantan/myoface/RecordHelper;->editor:Landroid/content/SharedPreferences$Editor;

    .line 54
    iget-object v8, p0, Lcom/miantan/myoface/RecordHelper;->preferences:Landroid/content/SharedPreferences;

    const-string v9, "version"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 55
    .local v5, rec_version:I
    if-nez v5, :cond_2

    .line 59
    const/4 v1, 0x1

    .local v1, id:I
    :goto_0
    const/4 v8, 0x5

    if-le v1, v8, :cond_1

    .line 73
    iget-object v8, p0, Lcom/miantan/myoface/RecordHelper;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v9, "stringset"

    iget-object v10, p0, Lcom/miantan/myoface/RecordHelper;->setString:Ljava/util/Set;

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 74
    iget-object v8, p0, Lcom/miantan/myoface/RecordHelper;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v9, "version"

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 75
    iget-object v8, p0, Lcom/miantan/myoface/RecordHelper;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 97
    .end local v1           #id:I
    :cond_0
    return-void

    .line 62
    .restart local v1       #id:I
    :cond_1
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 63
    .local v4, newjson:Lorg/json/JSONObject;
    neg-int v6, v1

    .line 64
    .local v6, recordid:I
    const-string v8, "id"

    invoke-virtual {v4, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 65
    iget-object v8, p0, Lcom/miantan/myoface/RecordHelper;->listJSON:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v8, p0, Lcom/miantan/myoface/RecordHelper;->setString:Ljava/util/Set;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v4           #newjson:Lorg/json/JSONObject;
    .end local v6           #recordid:I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 69
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 78
    .end local v0           #e:Lorg/json/JSONException;
    .end local v1           #id:I
    :cond_2
    if-ne v5, v11, :cond_0

    .line 80
    iget-object v8, p0, Lcom/miantan/myoface/RecordHelper;->preferences:Landroid/content/SharedPreferences;

    const-string v9, "stringset"

    iget-object v10, p0, Lcom/miantan/myoface/RecordHelper;->setString:Ljava/util/Set;

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v8

    iput-object v8, p0, Lcom/miantan/myoface/RecordHelper;->setString:Ljava/util/Set;

    .line 81
    iget-object v8, p0, Lcom/miantan/myoface/RecordHelper;->setString:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 82
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 84
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 86
    .local v7, str:Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 87
    .local v3, json:Lorg/json/JSONObject;
    iget-object v8, p0, Lcom/miantan/myoface/RecordHelper;->listJSON:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 89
    .end local v3           #json:Lorg/json/JSONObject;
    .end local v7           #str:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 91
    .restart local v0       #e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method
