.class public final Lccsancom/mbridge/msdk/foundation/tools/t;
.super Lccsancom/mbridge/msdk/foundation/tools/f;
.source "SameSDKTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/foundation/tools/t$a;
    }
.end annotation


# static fields
.field public static a:Z

.field public static b:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lccsancom/mbridge/msdk/foundation/tools/t;->a:Z

    .line 29
    const/16 v0, 0x1a

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/mbridge/msdk/foundation/tools/t;->b:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x61s
        0x6es
        0x64s
        0x72s
        0x6fs
        0x69s
        0x64s
        0x63s
        0x6fs
        0x6es
        0x74s
        0x65s
        0x6es
        0x74s
        0x70s
        0x6ds
        0x67s
        0x65s
        0x74s
        0x43s
        0x6fs
        0x6es
        0x74s
        0x65s
        0x78s
        0x74s
    .end array-data
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 256
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    const/4 p0, 0x0

    return-object p0

    .line 259
    :cond_0
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/b/c;->f:Lccsancom/mbridge/msdk/foundation/same/b/c;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/same/b/e;->a(Lccsancom/mbridge/msdk/foundation/same/b/c;)Ljava/io/File;

    move-result-object v0

    .line 260
    nop

    .line 1145
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_1

    .line 1146
    goto :goto_0

    .line 1148
    :cond_1
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 1149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1151
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v4, p0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 260
    :goto_0
    nop

    .line 261
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V
    .locals 4

    .line 194
    const-string v0, "url"

    const-string v1, "com.mbridge.msdk.activity.MBCommonActivity"

    if-nez p0, :cond_0

    .line 195
    return-void

    .line 197
    :cond_0
    sget-boolean v2, Lccsancom/mbridge/msdk/foundation/tools/t;->a:Z

    if-eqz v2, :cond_1

    .line 198
    invoke-static {p0, p1, p3}, Lccsancom/mbridge/msdk/foundation/tools/t;->b(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 199
    return-void

    .line 202
    :cond_1
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 203
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 204
    new-instance v2, Lccsanandroid/content/Intent;

    invoke-direct {v2, p0, v1}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    .line 205
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 206
    return-void

    .line 208
    :cond_2
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/t$a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 209
    const-string v1, "market://details?id="

    const-string v3, ""

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 213
    :cond_3
    invoke-virtual {v2, v0, p1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "webview url = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Lccsanandroid/content/Intent;->setFlags(I)Lccsanandroid/content/Intent;

    .line 216
    const-string v0, "mvcommon"

    invoke-virtual {v2, v0, p2}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Lccsanandroid/content/Intent;

    .line 217
    invoke-virtual {p0, v2}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    goto :goto_0

    .line 218
    :catch_0
    move-exception p2

    .line 219
    invoke-static {p0, p1, p3}, Lccsancom/mbridge/msdk/foundation/tools/t;->b(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 221
    :goto_0
    return-void
.end method

.method public static a(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V
    .locals 8

    .line 156
    const-string v0, "com.android.vending"

    :try_start_0
    new-instance v1, Lccsanandroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;Lccsanandroid/net/Uri;)V

    .line 157
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Lccsanandroid/content/Intent;->addFlags(I)Lccsanandroid/content/Intent;

    .line 158
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v2

    .line 159
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lccsanandroid/content/pm/PackageManager;->queryIntentActivities(Lccsanandroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 161
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v3, 0x1

    .line 162
    :cond_0
    const-string v4, "market://"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v5, "https://play.google.com/store/apps/details?id="

    const-string v6, ""

    const-string v7, "market://details?id="

    if-eqz v4, :cond_4

    .line 163
    if-nez v3, :cond_1

    .line 164
    :try_start_1
    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 166
    invoke-static {p0, p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/t;->b(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    goto :goto_3

    .line 168
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroid/content/pm/ResolveInfo;

    .line 169
    iget-object v3, v3, Lccsanandroid/content/pm/ResolveInfo;->activityInfo:Lccsanandroid/content/pm/ActivityInfo;

    iget-object v3, v3, Lccsanandroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 170
    const-string v2, "com.android.vending.AssetBrowserActivity"

    invoke-virtual {v1, v0, v2}, Lccsanandroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 171
    goto :goto_1

    .line 173
    :cond_2
    goto :goto_0

    .line 175
    :cond_3
    :goto_1
    :try_start_2
    invoke-virtual {p0, v1}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V

    .line 176
    invoke-static {p2}, Lccsancom/mbridge/msdk/foundation/tools/t;->a(Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 181
    :goto_2
    goto :goto_3

    .line 177
    :catch_0
    move-exception v0

    .line 178
    :try_start_3
    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 180
    invoke-static {p0, p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/t;->b(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    goto :goto_2

    .line 183
    :cond_4
    const-string v0, "https://play.google.com/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 184
    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 186
    invoke-static {p0, p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/t;->a(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 190
    :cond_5
    :goto_3
    goto :goto_4

    .line 188
    :catch_1
    move-exception p0

    .line 189
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SDKUtil"

    invoke-static {p1, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :goto_4
    return-void
.end method

.method public static a(Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V
    .locals 1

    .line 139
    instance-of v0, p0, Lccsancom/mbridge/msdk/out/NativeListener$TrackingExListener;

    if-eqz v0, :cond_0

    .line 140
    check-cast p0, Lccsancom/mbridge/msdk/out/NativeListener$TrackingExListener;

    invoke-interface {p0}, Lccsancom/mbridge/msdk/out/NativeListener$TrackingExListener;->onLeaveApp()V

    .line 142
    :cond_0
    return-void
.end method

.method public static b(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V
    .locals 4

    .line 224
    const-string v0, "android.intent.action.VIEW"

    if-eqz p1, :cond_3

    if-nez p0, :cond_0

    goto :goto_1

    .line 227
    :cond_0
    :try_start_0
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/t$a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 228
    const-string v1, "market://details?id="

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 231
    :cond_1
    new-instance v1, Lccsanandroid/content/Intent;

    invoke-static {p1}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;Lccsanandroid/net/Uri;)V

    .line 232
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Lccsanandroid/content/Intent;->addFlags(I)Lccsanandroid/content/Intent;

    .line 233
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v1, v3}, Lccsanandroid/content/pm/PackageManager;->resolveActivity(Lccsanandroid/content/Intent;I)Lccsanandroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 234
    if-eqz v2, :cond_2

    .line 235
    iget-object v3, v2, Lccsanandroid/content/pm/ResolveInfo;->activityInfo:Lccsanandroid/content/pm/ActivityInfo;

    iget-object v3, v3, Lccsanandroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 236
    iget-object v2, v2, Lccsanandroid/content/pm/ResolveInfo;->activityInfo:Lccsanandroid/content/pm/ActivityInfo;

    iget-object v2, v2, Lccsanandroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lccsanandroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 238
    :cond_2
    invoke-virtual {p0, v1}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V

    .line 239
    invoke-static {p2}, Lccsancom/mbridge/msdk/foundation/tools/t;->a(Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    goto :goto_0

    .line 240
    :catch_0
    move-exception v1

    .line 241
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 243
    :try_start_1
    new-instance v1, Lccsanandroid/content/Intent;

    .line 244
    invoke-static {p1}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;Lccsanandroid/net/Uri;)V

    .line 245
    const p1, 0x10008000

    invoke-virtual {v1, p1}, Lccsanandroid/content/Intent;->addFlags(I)Lccsanandroid/content/Intent;

    .line 247
    invoke-virtual {p0, v1}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V

    .line 248
    invoke-static {p2}, Lccsancom/mbridge/msdk/foundation/tools/t;->a(Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 251
    goto :goto_0

    .line 249
    :catch_1
    move-exception p0

    .line 250
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 253
    :goto_0
    return-void

    .line 225
    :cond_3
    :goto_1
    return-void
.end method
