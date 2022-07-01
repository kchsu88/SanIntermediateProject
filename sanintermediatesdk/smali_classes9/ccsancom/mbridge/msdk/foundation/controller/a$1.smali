.class final Lccsancom/mbridge/msdk/foundation/controller/a$1;
.super Ljava/lang/Object;
.source "MBSDKContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/foundation/controller/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsanandroid/os/Handler;

.field final synthetic b:Lccsancom/mbridge/msdk/foundation/controller/a;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/foundation/controller/a;Lccsanandroid/os/Handler;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/controller/a$1;->b:Lccsancom/mbridge/msdk/foundation/controller/a;

    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/controller/a$1;->a:Lccsanandroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 150
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v0

    const-string v1, "authority_device_id"

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    :try_start_0
    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 154
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/controller/a$1;->b:Lccsancom/mbridge/msdk/foundation/controller/a;

    .line 155
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->a(Lccsancom/mbridge/msdk/foundation/controller/a;)Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Lccsanandroid/content/Context;)Lccsancom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Lccsancom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/m;->a(Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/controller/a$1;->b:Lccsancom/mbridge/msdk/foundation/controller/a;

    invoke-virtual {v0}, Lccsancom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->a(Lccsancom/mbridge/msdk/foundation/controller/a;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 165
    :catchall_0
    move-exception v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 160
    :try_start_1
    new-instance v0, Lccsancom/mbridge/msdk/foundation/controller/a$a;

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/controller/a$1;->b:Lccsancom/mbridge/msdk/foundation/controller/a;

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/foundation/controller/a$a;-><init>(Lccsancom/mbridge/msdk/foundation/controller/a;)V

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/controller/a$1;->b:Lccsancom/mbridge/msdk/foundation/controller/a;

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->a(Lccsancom/mbridge/msdk/foundation/controller/a;)Lccsanandroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/controller/a$a;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/controller/a$a$a;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a$a$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/m;->a(Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/controller/a$1;->b:Lccsancom/mbridge/msdk/foundation/controller/a;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a$a$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->a(Lccsancom/mbridge/msdk/foundation/controller/a;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 164
    goto :goto_0

    .line 163
    :catch_1
    move-exception v0

    .line 170
    :cond_0
    :goto_0
    :try_start_2
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v0

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/b/b;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;

    move-result-object v0

    .line 171
    if-nez v0, :cond_1

    .line 172
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/b;->b()Lccsancom/mbridge/msdk/b/a;

    move-result-object v0

    .line 174
    :cond_1
    invoke-static {}, Lccsanandroid/os/Message;->obtain()Lccsanandroid/os/Message;

    move-result-object v1

    .line 175
    iput-object v0, v1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    .line 176
    const/16 v0, 0x9

    iput v0, v1, Lccsanandroid/os/Message;->what:I

    .line 177
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/controller/a$1;->a:Lccsanandroid/os/Handler;

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 180
    goto :goto_1

    .line 178
    :catch_2
    move-exception v0

    .line 179
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 182
    :goto_1
    :try_start_3
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/controller/a$1;->b:Lccsancom/mbridge/msdk/foundation/controller/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->a(Lccsancom/mbridge/msdk/foundation/controller/a;)Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/m;->b(Lccsanandroid/content/Context;)V

    .line 183
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/controller/a$1;->b:Lccsancom/mbridge/msdk/foundation/controller/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->a(Lccsancom/mbridge/msdk/foundation/controller/a;)Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/controller/a$1;->b:Lccsancom/mbridge/msdk/foundation/controller/a;

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->b(Lccsancom/mbridge/msdk/foundation/controller/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/b/b;->a(Lccsanandroid/content/Context;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 186
    goto :goto_2

    .line 184
    :catch_3
    move-exception v0

    .line 185
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 188
    :goto_2
    return-void
.end method
