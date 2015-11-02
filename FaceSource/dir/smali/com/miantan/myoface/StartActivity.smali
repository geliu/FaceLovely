.class public Lcom/miantan/myoface/StartActivity;
.super Landroid/app/Activity;
.source "StartActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private SCAN_PATH:Ljava/lang/String;

.field agent:Lcom/umeng/fb/FeedbackAgent;

.field public allFiles:[Ljava/lang/String;

.field private btnFeedBack:Landroid/widget/Button;

.field private btnFunDouble:Lcom/miantan/myoface/ButtonFun;

.field private btnFunHistory:Lcom/miantan/myoface/ButtonFun;

.field private btnSingleFemale:Lcom/miantan/myoface/ButtonSingle;

.field private btnSingleMale:Lcom/miantan/myoface/ButtonSingle;

.field editor:Landroid/content/SharedPreferences$Editor;

.field private exitTime:J

.field private imgAboutUs:Landroid/widget/ImageView;

.field private imgShare:Landroid/widget/ImageView;

.field private imgSoundSwitch:Landroid/widget/ImageView;

.field private music_boy:I

.field private music_girl:I

.field preferences:Landroid/content/SharedPreferences;

.field private relativelayoutJoinUs:Landroid/widget/RelativeLayout;

.field private relativelayoutTeam:Landroid/widget/RelativeLayout;

.field private sp_boy:Landroid/media/SoundPool;

.field private sp_girl:Landroid/media/SoundPool;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    const-string v0, "myotee"

    iput-object v0, p0, Lcom/miantan/myoface/StartActivity;->SCAN_PATH:Ljava/lang/String;

    .line 57
    const-string v0, "MYOFace"

    iput-object v0, p0, Lcom/miantan/myoface/StartActivity;->LOG_TAG:Ljava/lang/String;

    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miantan/myoface/StartActivity;->exitTime:J

    .line 34
    return-void
.end method

.method private CheckGuidePage()V
    .locals 9

    .prologue
    .line 170
    :try_start_0
    invoke-virtual {p0}, Lcom/miantan/myoface/StartActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.miantan.myoface"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget v3, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 172
    .local v3, mCurVersionCode:I
    const-string v6, "config"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/miantan/myoface/StartActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 173
    .local v5, preferences:Landroid/content/SharedPreferences;
    const-string v6, "AppVersionCode"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 175
    .local v4, mPreVersionCode:I
    if-ge v4, v3, :cond_0

    .line 178
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 179
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "AppVersionCode"

    invoke-interface {v1, v6, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 180
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 183
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcom/miantan/myoface/GuidePageActivity;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    .local v2, it:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/miantan/myoface/StartActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #it:Landroid/content/Intent;
    .end local v3           #mCurVersionCode:I
    .end local v4           #mPreVersionCode:I
    .end local v5           #preferences:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private ShowToast(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    .line 425
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 426
    .local v0, toast:Landroid/widget/Toast;
    const/16 v1, 0x51

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 427
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 428
    return-void
.end method


# virtual methods
.method public getSDPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 408
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 410
    .local v0, hasSDCard:Z
    if-eqz v0, :cond_0

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/myotee"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 418
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/miantan/myoface/StartActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 392
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 395
    sget-boolean v0, Lcom/miantan/myoface/BasicData;->isSoundOn:Z

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/miantan/myoface/StartActivity;->imgSoundSwitch:Landroid/widget/ImageView;

    const v1, 0x7f020031

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/miantan/myoface/StartActivity;->imgSoundSwitch:Landroid/widget/ImageView;

    const v1, 0x7f020030

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 15
    .parameter "v"

    .prologue
    .line 224
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 388
    :goto_0
    :pswitch_0
    return-void

    .line 229
    :pswitch_1
    const-string v0, "BtnMale"

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 230
    sget-boolean v0, Lcom/miantan/myoface/BasicData;->isSoundOn:Z

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/miantan/myoface/StartActivity;->sp_boy:Landroid/media/SoundPool;

    iget v1, p0, Lcom/miantan/myoface/StartActivity;->music_boy:I

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 233
    :cond_0
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 234
    .local v13, maleintent1:Landroid/content/Intent;
    const-class v0, Lcom/miantan/myoface/EditorActivity;

    invoke-virtual {v13, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 235
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 236
    .local v12, malebundle1:Landroid/os/Bundle;
    const-string v0, "editType"

    const-string v1, "new"

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v0, "sexualType"

    const-string v1, "male"

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {v13, v12}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 239
    const/4 v0, 0x1

    invoke-virtual {p0, v13, v0}, Lcom/miantan/myoface/StartActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 240
    const v0, 0x7f040007

    const v1, 0x7f040008

    invoke-virtual {p0, v0, v1}, Lcom/miantan/myoface/StartActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 246
    .end local v12           #malebundle1:Landroid/os/Bundle;
    .end local v13           #maleintent1:Landroid/content/Intent;
    :pswitch_2
    const-string v0, "BtnFemale"

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 247
    sget-boolean v0, Lcom/miantan/myoface/BasicData;->isSoundOn:Z

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/miantan/myoface/StartActivity;->sp_girl:Landroid/media/SoundPool;

    iget v1, p0, Lcom/miantan/myoface/StartActivity;->music_girl:I

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 250
    :cond_1
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 251
    .local v9, femaleIntent:Landroid/content/Intent;
    const-class v0, Lcom/miantan/myoface/EditorActivity;

    invoke-virtual {v9, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 252
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 253
    .local v8, femaleBundle:Landroid/os/Bundle;
    const-string v0, "editType"

    const-string v1, "new"

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v0, "sexualType"

    const-string v1, "female"

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-virtual {v9, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 256
    const/4 v0, 0x1

    invoke-virtual {p0, v9, v0}, Lcom/miantan/myoface/StartActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 257
    const v0, 0x7f040007

    const v1, 0x7f040008

    invoke-virtual {p0, v0, v1}, Lcom/miantan/myoface/StartActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 295
    .end local v8           #femaleBundle:Landroid/os/Bundle;
    .end local v9           #femaleIntent:Landroid/content/Intent;
    :pswitch_3
    const-string v0, "BtnFeedBack"

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/miantan/myoface/StartActivity;->agent:Lcom/umeng/fb/FeedbackAgent;

    invoke-virtual {v0}, Lcom/umeng/fb/FeedbackAgent;->startFeedbackActivity()V

    goto/16 :goto_0

    .line 302
    :pswitch_4
    const-string v0, "BtnDouble"

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 305
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 306
    .local v7, doubleIntent:Landroid/content/Intent;
    const-class v0, Lcom/miantan/myoface/ChooseDoubleModeActivity;

    invoke-virtual {v7, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 307
    const/4 v0, 0x1

    invoke-virtual {p0, v7, v0}, Lcom/miantan/myoface/StartActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 308
    const v0, 0x7f040007

    const v1, 0x7f040008

    invoke-virtual {p0, v0, v1}, Lcom/miantan/myoface/StartActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 314
    .end local v7           #doubleIntent:Landroid/content/Intent;
    :pswitch_5
    const-string v0, "BtnHistory"

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 315
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 316
    .local v14, moreIntent:Landroid/content/Intent;
    const-class v0, Lcom/miantan/myoface/HistroyActivity;

    invoke-virtual {v14, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 318
    invoke-virtual {p0, v14}, Lcom/miantan/myoface/StartActivity;->startActivity(Landroid/content/Intent;)V

    .line 319
    const v0, 0x7f040007

    const v1, 0x7f040008

    invoke-virtual {p0, v0, v1}, Lcom/miantan/myoface/StartActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 337
    .end local v14           #moreIntent:Landroid/content/Intent;
    :pswitch_6
    const-string v0, "BtnJoinUs"

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 338
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 339
    .restart local v14       #moreIntent:Landroid/content/Intent;
    const-class v0, Lcom/miantan/myoface/JoinUsActivity;

    invoke-virtual {v14, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 341
    invoke-virtual {p0, v14}, Lcom/miantan/myoface/StartActivity;->startActivity(Landroid/content/Intent;)V

    .line 342
    const v0, 0x7f040007

    const v1, 0x7f040008

    invoke-virtual {p0, v0, v1}, Lcom/miantan/myoface/StartActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 349
    .end local v14           #moreIntent:Landroid/content/Intent;
    :pswitch_7
    const-string v0, "ImgAboutUs"

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 350
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 351
    .restart local v14       #moreIntent:Landroid/content/Intent;
    const-class v0, Lcom/miantan/myoface/AboutUsActivity;

    invoke-virtual {v14, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 353
    invoke-virtual {p0, v14}, Lcom/miantan/myoface/StartActivity;->startActivity(Landroid/content/Intent;)V

    .line 354
    const v0, 0x7f040007

    const v1, 0x7f040008

    invoke-virtual {p0, v0, v1}, Lcom/miantan/myoface/StartActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 361
    .end local v14           #moreIntent:Landroid/content/Intent;
    :pswitch_8
    sget-boolean v0, Lcom/miantan/myoface/BasicData;->isSoundOn:Z

    if-eqz v0, :cond_2

    .line 363
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miantan/myoface/BasicData;->isSoundOn:Z

    .line 364
    iget-object v0, p0, Lcom/miantan/myoface/StartActivity;->imgSoundSwitch:Landroid/widget/ImageView;

    const v1, 0x7f020030

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 373
    :goto_1
    invoke-static {}, Lcom/miantan/myoface/BasicData;->getSoundSwitch()I

    move-result v11

    .line 374
    .local v11, mIsSoundOn:I
    iget-object v0, p0, Lcom/miantan/myoface/StartActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "SwitchSoundOn"

    invoke-interface {v0, v1, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 375
    iget-object v0, p0, Lcom/miantan/myoface/StartActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 369
    .end local v11           #mIsSoundOn:I
    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/miantan/myoface/BasicData;->isSoundOn:Z

    .line 370
    iget-object v0, p0, Lcom/miantan/myoface/StartActivity;->imgSoundSwitch:Landroid/widget/ImageView;

    const v1, 0x7f020031

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 381
    :pswitch_9
    new-instance v10, Landroid/content/Intent;

    const-class v0, Lcom/miantan/myoface/ShareAppActivity;

    invoke-direct {v10, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 382
    .local v10, i:Landroid/content/Intent;
    const/4 v0, 0x0

    invoke-virtual {p0, v10, v0}, Lcom/miantan/myoface/StartActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 224
    :pswitch_data_0
    .packed-switch 0x7f0b0040
        :pswitch_3
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const v9, 0x7f020070

    const v8, 0x7f02006e

    const/16 v7, 0xa

    const/4 v6, 0x5

    const/4 v5, 0x1

    .line 73
    invoke-direct {p0}, Lcom/miantan/myoface/StartActivity;->CheckGuidePage()V

    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/miantan/myoface/StartActivity;->setContentView(I)V

    .line 80
    const v0, 0x7f0b0049

    invoke-virtual {p0, v0}, Lcom/miantan/myoface/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miantan/myoface/ButtonSingle;

    iput-object v0, p0, Lcom/miantan/myoface/StartActivity;->btnSingleMale:Lcom/miantan/myoface/ButtonSingle;

    .line 81
    iget-object v0, p0, Lcom/miantan/myoface/StartActivity;->btnSingleMale:Lcom/miantan/myoface/ButtonSingle;

    const v1, 0x7f020075

    const v2, 0x7f020074

    const v3, 0x7f020073

    const v4, 0x7f08002f

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miantan/myoface/ButtonSingle;->setResource(IIII)V

    .line 82
    iget-object v0, p0, Lcom/miantan/myoface/StartActivity;->btnSingleMale:Lcom/miantan/myoface/ButtonSingle;

    const v1, 0x7f020072

    const v2, 0x7f020071

    invoke-virtual {v0, v1, v2}, Lcom/miantan/myoface/ButtonSingle;->setResoucePressed(II)V

    .line 83
    iget-object v0, p0, Lcom/miantan/myoface/StartActivity;->btnSingleMale:Lcom/miantan/myoface/ButtonSingle;

    invoke-virtual {v0, p0}, Lcom/miantan/myoface/ButtonSingle;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const v0, 0x7f0b004a

    invoke-virtual {p0, v0}, Lcom/miantan/myoface/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miantan/myoface/ButtonSingle;

    iput-object v0, p0, Lcom/miantan/myoface/StartActivity;->btnSingleFemale:Lcom/miantan/myoface/ButtonSingle;

    .line 86
    iget-object v0, p0, Lcom/miantan/myoface/StartActivity;->btnSingleFemale:Lcom/miantan/myoface/ButtonSingle;

    const v1, 0x7f02007a

    const v2, 0x7f020079

    const v3, 0x7f020078

    const v4, 0x7f080030

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miantan/myoface/ButtonSingle;->setResource(IIII)V

    .line 87
    iget-object v0, p0, Lcom/miantan/myoface/StartActivity;->btnSingleFemale:Lcom/miantan/myoface/ButtonSingle;

    const v1, 0x7f020077

    const v2, 0x7f020076

    invoke-virtual {v0, v1, v2}, Lcom/miantan/myoface/ButtonSingle;->setResoucePressed(II)V

    .line 88
    iget-object v0, p0, Lcom/miantan/myoface/StartActivity;->btnSingleFemale:Lcom/miantan/myoface/ButtonSingle;

    invoke-virtual {v0, p0}, Lcom/miantan/myoface/ButtonSingle;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const v0, 0x7f0b004c

    invoke-virtual {p0, v0}, Lcom/miantan/myoface/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miantan/myoface/ButtonFun;

    iput-object v0, p0, Lcom/miantan/myoface/StartActivity;->btnFunDouble:Lcom/miantan/myoface/ButtonFun;

    .line 91
    iget-object v0, p0, Lcom/miantan/myoface/StartActivity;->btnFunDouble:Lcom/miantan/myoface/ButtonFun;

    const v1, 0x7f02006d

    const v2, 0x7f080031

    invoke-virtual {v0, v9, v1, v2}, Lcom/miantan/myoface/ButtonFun;->setResource(III)V

    .line 92
    iget-object v0, p0, Lcom/miantan/myoface/StartActivity;->btnFunDouble:Lcom/miantan/myoface/ButtonFun;

    invoke-virtual {v0, v8}, Lcom/miantan/myoface/ButtonFun;->setResoucePressed(I)V

    .line 93
    iget-object v0, p0, Lcom/miantan/myoface/StartActivity;->btnFunDouble:Lcom/miantan/myoface/ButtonFun;

    invoke-virtual {v0, p0}, Lcom/miantan/myoface/ButtonFun;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v0, 0x7f0b004e

    invoke-virtual {p0, v0}, Lcom/miantan/myoface/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miantan/myoface/ButtonFun;

    iput-object v0, p0, Lcom/miantan/myoface/StartActivity;->btnFunHistory:Lcom/miantan/myoface/ButtonFun;

    .line 96
    iget-object v0, p0, Lcom/miantan/myoface/StartActivity;->btnFunHistory:Lcom/miantan/myoface/ButtonFun;

    const v1, 0x7f02006f

    const v2, 0x7f080032

    invoke-virtual {v0, v9, v1, v2}, Lcom/miantan/myoface/ButtonFun;->setResource(III)V

    .line 97
    iget-object v0, p0, Lcom/miantan/myoface/StartActivity;->btnFunHistory:Lcom/miantan/myoface/ButtonFun;

    invoke-virtual {v0, v8}, Lcom/miantan/myoface/ButtonFun;->setResoucePressed(I)V

    .line 98
    iget-object v0, p0, Lcom/miantan/myoface/StartActivity;->btnFunHistory:Lcom/miantan/myoface/ButtonFun;

    invoke-virtual {v0, p0}, Lcom/miantan/myoface/ButtonFun;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v0, 0x7f0b0040

    invoke-virtual {p0, v0}, Lcom/miantan/myoface/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miantan/myoface/StartActivity;->btnFeedBack:Landroid/widget/Button;

    .line 111
    const v0, 0x7f0b0042

    invoke-virtual {p0, v0}, Lcom/miantan/myoface/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miantan/myoface/StartActivity;->imgSoundSwitch:Landroid/widget/ImageView;

    .line 112
    sget-boolean v0, Lcom/miantan/myoface/BasicData;->isSoundOn:Z

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/miantan/myoface/StartActivity;->imgSoundSwitch:Landroid/widget/ImageView;

    const v1, 0x7f020031

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 116
    :goto_0
    const v0, 0x7f0b0044

    invoke-virtual {p0, v0}, Lcom/miantan/myoface/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miantan/myoface/StartActivity;->imgShare:Landroid/widget/ImageView;

    .line 117
    const v0, 0x7f0b0052

    invoke-virtual {p0, v0}, Lcom/miantan/myoface/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miantan/myoface/StartActivity;->relativelayoutJoinUs:Landroid/widget/RelativeLayout;

    .line 118
    const v0, 0x7f0b0053

    invoke-virtual {p0, v0}, Lcom/miantan/myoface/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miantan/myoface/StartActivity;->relativelayoutTeam:Landroid/widget/RelativeLayout;

    .line 122
    iget-object v0, p0, Lcom/miantan/myoface/StartActivity;->btnFeedBack:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/miantan/myoface/StartActivity;->imgSoundSwitch:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/miantan/myoface/StartActivity;->imgShare:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/miantan/myoface/StartActivity;->relativelayoutJoinUs:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/miantan/myoface/StartActivity;->relativelayoutTeam:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    new-instance v0, Landroid/media/SoundPool;

    invoke-direct {v0, v7, v5, v6}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/miantan/myoface/StartActivity;->sp_boy:Landroid/media/SoundPool;

    .line 131
    iget-object v0, p0, Lcom/miantan/myoface/StartActivity;->sp_boy:Landroid/media/SoundPool;

    const/high16 v1, 0x7f05

    invoke-virtual {v0, p0, v1, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/miantan/myoface/StartActivity;->music_boy:I

    .line 133
    new-instance v0, Landroid/media/SoundPool;

    invoke-direct {v0, v7, v5, v6}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/miantan/myoface/StartActivity;->sp_girl:Landroid/media/SoundPool;

    .line 134
    iget-object v0, p0, Lcom/miantan/myoface/StartActivity;->sp_girl:Landroid/media/SoundPool;

    const v1, 0x7f050001

    invoke-virtual {v0, p0, v1, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/miantan/myoface/StartActivity;->music_girl:I

    .line 136
    invoke-static {v5}, Lcom/umeng/analytics/MobclickAgent;->setDebugMode(Z)V

    .line 139
    const-string v0, "EnterMainPage"

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 141
    new-instance v0, Lcom/umeng/fb/FeedbackAgent;

    invoke-direct {v0, p0}, Lcom/umeng/fb/FeedbackAgent;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miantan/myoface/StartActivity;->agent:Lcom/umeng/fb/FeedbackAgent;

    .line 142
    iget-object v0, p0, Lcom/miantan/myoface/StartActivity;->agent:Lcom/umeng/fb/FeedbackAgent;

    invoke-virtual {v0}, Lcom/umeng/fb/FeedbackAgent;->sync()V

    .line 147
    const-string v0, "config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miantan/myoface/StartActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/miantan/myoface/StartActivity;->preferences:Landroid/content/SharedPreferences;

    .line 148
    iget-object v0, p0, Lcom/miantan/myoface/StartActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/miantan/myoface/StartActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 164
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/miantan/myoface/StartActivity;->imgSoundSwitch:Landroid/widget/ImageView;

    const v1, 0x7f020030

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 195
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 196
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onKillProcess(Landroid/content/Context;)V

    .line 197
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 198
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 438
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 439
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 440
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 432
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 433
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 434
    return-void
.end method
