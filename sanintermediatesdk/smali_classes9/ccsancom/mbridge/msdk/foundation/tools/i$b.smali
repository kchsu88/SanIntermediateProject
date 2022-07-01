.class final Lccsancom/mbridge/msdk/foundation/tools/i$b;
.super Lccsanandroid/content/BroadcastReceiver;
.source "MIMManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/foundation/tools/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 227
    invoke-direct {p0}, Lccsanandroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/mbridge/msdk/foundation/tools/i$1;)V
    .locals 0

    .line 227
    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/tools/i$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V
    .locals 4

    .line 231
    invoke-virtual {p2}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    return-void

    .line 235
    :cond_0
    const-string v1, "DFKwWgtuDkKwLZPwD+z8H+N/xj26Vjcdx5KyVj5GxVN="

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1054
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/i$a;->a()Lccsancom/mbridge/msdk/foundation/tools/i;

    move-result-object p2

    .line 236
    nop

    .line 2054
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/i$a;->a()Lccsancom/mbridge/msdk/foundation/tools/i;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/tools/i;->b()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v0

    const-string v1, "dm_page_opened"

    invoke-virtual {p2, p1, v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/i;->a(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    goto/16 :goto_2

    .line 237
    :cond_1
    const-string v1, "DFKwWgtuDkKwLZPwD+z8H+N/xj26Vjcdx5KanjKnxVN="

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3054
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/i$a;->a()Lccsancom/mbridge/msdk/foundation/tools/i;

    move-result-object p2

    .line 238
    nop

    .line 4054
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/i$a;->a()Lccsancom/mbridge/msdk/foundation/tools/i;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/tools/i;->b()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v0

    const-string v1, "dm_page_closed"

    invoke-virtual {p2, p1, v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/i;->a(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    goto/16 :goto_2

    .line 239
    :cond_2
    const-string v1, "DFKwWgtuDkKwLZPwD+z8H+N/xjQZxVfV+T2SZVe6V2xS5c5n"

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 241
    :try_start_0
    invoke-virtual {p2}, Lccsanandroid/content/Intent;->getExtras()Lccsanandroid/os/Bundle;

    move-result-object p2

    .line 242
    if-nez p2, :cond_3

    .line 243
    return-void

    .line 246
    :cond_3
    const-string v0, "code"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Lccsanandroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 247
    const-string v2, "packageName"

    const-string v3, ""

    invoke-virtual {p2, v2, v3}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 249
    if-eq v0, v1, :cond_7

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    .line 5054
    :cond_4
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/i$a;->a()Lccsancom/mbridge/msdk/foundation/tools/i;

    move-result-object v1

    .line 253
    invoke-static {v1, p2}, Lccsancom/mbridge/msdk/foundation/tools/i;->a(Lccsancom/mbridge/msdk/foundation/tools/i;Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object p2

    .line 255
    if-nez p2, :cond_5

    .line 256
    return-void

    .line 6054
    :cond_5
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/i$a;->a()Lccsancom/mbridge/msdk/foundation/tools/i;

    move-result-object v1

    .line 259
    nop

    .line 6343
    packed-switch v0, :pswitch_data_0

    .line 6354
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 6351
    :pswitch_1
    nop

    .line 8364
    new-instance v0, Lccsancom/mbridge/msdk/foundation/tools/i$2;

    invoke-direct {v0, v1, p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/i$2;-><init>(Lccsancom/mbridge/msdk/foundation/tools/i;Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 8378
    nop

    .line 6351
    nop

    .line 6352
    goto :goto_0

    .line 6348
    :pswitch_2
    nop

    .line 7382
    new-instance v0, Lccsancom/mbridge/msdk/foundation/tools/i$3;

    invoke-direct {v0, v1, p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/i$3;-><init>(Lccsancom/mbridge/msdk/foundation/tools/i;Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 7392
    nop

    .line 6348
    nop

    .line 6349
    goto :goto_0

    .line 6345
    :pswitch_3
    nop

    .line 6396
    new-instance v0, Lccsancom/mbridge/msdk/foundation/tools/i$4;

    invoke-direct {v0, v1, p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/i$4;-><init>(Lccsancom/mbridge/msdk/foundation/tools/i;Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 6406
    nop

    .line 6345
    nop

    .line 6346
    nop

    .line 6358
    :goto_0
    if-eqz v0, :cond_6

    .line 6359
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/f/b;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :cond_6
    goto :goto_2

    .line 250
    :cond_7
    :goto_1
    return-void

    .line 260
    :catch_0
    move-exception p1

    .line 261
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MIMManager"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_8
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
