.class public Lccsancom/mbridge/msdk/out/MBBidNativeHandler;
.super Lccsancom/mbridge/msdk/out/MBBidCommonHandler;
.source "MBBidNativeHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/out/MBBidNativeHandler$KeyWordInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final TEMPLATE_ID:Ljava/lang/String; = "id"

.field public static final TEMPLATE_NUM:Ljava/lang/String; = "ad_num"

.field private static mUnitID:Ljava/lang/String;


# instance fields
.field private adListener:Lccsancom/mbridge/msdk/mbnative/d/a;

.field private clickControler:Lccsancom/mbridge/msdk/click/a;

.field private context:Lccsanandroid/content/Context;

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private nativeProvider:Lccsancom/mbridge/msdk/mbnative/f/a;

.field private templateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/out/NativeListener$Template;",
            ">;"
        }
    .end annotation
.end field

.field private trackingListener:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Lccsancom/mbridge/msdk/out/MBBidCommonHandler;-><init>()V

    .line 25
    new-instance v0, Lccsancom/mbridge/msdk/mbnative/d/a;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/mbnative/d/a;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->adListener:Lccsancom/mbridge/msdk/mbnative/d/a;

    .line 44
    iput-object p1, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->context:Lccsanandroid/content/Context;

    .line 45
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 46
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/controller/a;->b(Lccsanandroid/content/Context;)V

    .line 48
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->map:Ljava/util/Map;

    if-eqz p1, :cond_2

    const-string v0, "unit_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 49
    iget-object p1, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->map:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 50
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 51
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->adListener:Lccsancom/mbridge/msdk/mbnative/d/a;

    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/mbnative/d/a;->a(Ljava/lang/String;)V

    .line 54
    :cond_1
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 56
    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Lccsanandroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lccsanandroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 63
    const-string v0, "native_video_height"

    const-string v1, "native_video_width"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/out/MBBidCommonHandler;-><init>(Ljava/util/Map;Lccsanandroid/content/Context;)V

    .line 25
    new-instance v2, Lccsancom/mbridge/msdk/mbnative/d/a;

    invoke-direct {v2}, Lccsancom/mbridge/msdk/mbnative/d/a;-><init>()V

    iput-object v2, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->adListener:Lccsancom/mbridge/msdk/mbnative/d/a;

    .line 64
    iput-object p2, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->context:Lccsanandroid/content/Context;

    .line 65
    iput-object p1, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->map:Ljava/util/Map;

    .line 66
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    .line 67
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2, p2}, Lccsancom/mbridge/msdk/foundation/controller/a;->b(Lccsanandroid/content/Context;)V

    .line 71
    :cond_0
    const-string p2, "unit_id"

    if-eqz p1, :cond_1

    .line 72
    :try_start_0
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 74
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 76
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 78
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 80
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 82
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 84
    :catchall_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 86
    :cond_1
    :goto_0
    nop

    .line 87
    :goto_1
    if-eqz p1, :cond_3

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 89
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 90
    iget-object p2, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->adListener:Lccsancom/mbridge/msdk/mbnative/d/a;

    if-eqz p2, :cond_2

    .line 91
    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/mbnative/d/a;->a(Ljava/lang/String;)V

    .line 93
    :cond_2
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 94
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 95
    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_3
    return-void
.end method

.method public static getNativeProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 120
    sput-object p1, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->mUnitID:Ljava/lang/String;

    .line 121
    const-string v1, "unit_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object p1, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, ""

    :cond_0
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    const-string p1, "MVNativePlugin"

    const/4 v1, 0x0

    aput-object p1, p0, v1

    const-string p1, "plugin_name"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "layout_type"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    return-object v0
.end method

.method public static getTemplateString(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/out/NativeListener$Template;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 167
    nop

    .line 169
    if-eqz p0, :cond_1

    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 170
    const-string v0, "[{$native_info}]"

    .line 171
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 172
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ","

    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/out/NativeListener$Template;

    .line 173
    const-string v4, "{\"id\":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/out/NativeListener$Template;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\"ad_num\":"

    .line 174
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/out/NativeListener$Template;->getAdNum()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "},"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    goto :goto_0

    .line 176
    :cond_0
    const-string p0, "{$native_info}"

    const/4 v2, 0x0

    .line 177
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 176
    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    .line 179
    :catch_0
    move-exception p0

    goto :goto_1

    .line 180
    :cond_1
    nop

    .line 181
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private loadMB(Ljava/lang/String;)V
    .locals 4

    .line 185
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->adListener:Lccsancom/mbridge/msdk/mbnative/d/a;

    if-eqz v0, :cond_0

    .line 186
    const-string p1, "bidToken can not be null, bid first"

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/mbnative/d/a;->onAdLoadError(Ljava/lang/String;)V

    .line 187
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->properties:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->properties:Ljava/util/Map;

    const-string v1, "unit_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 190
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->templateList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 192
    :try_start_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->buildTemplateString()Ljava/lang/String;

    move-result-object v0

    .line 193
    iget-object v1, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->properties:Ljava/util/Map;

    const-string v2, "native_info"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    const-string v0, "com.mbridge.msdk"

    const-string v1, "MBSDK set template error"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->properties:Ljava/util/Map;

    const-string v1, "handler_controller"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->nativeProvider:Lccsancom/mbridge/msdk/mbnative/f/a;

    if-nez v0, :cond_2

    .line 201
    new-instance v0, Lccsancom/mbridge/msdk/mbnative/f/a;

    iget-object v1, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->adListener:Lccsancom/mbridge/msdk/mbnative/d/a;

    iget-object v2, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->trackingListener:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    invoke-direct {v0, v1, v2}, Lccsancom/mbridge/msdk/mbnative/f/a;-><init>(Lccsancom/mbridge/msdk/mbnative/d/a;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->nativeProvider:Lccsancom/mbridge/msdk/mbnative/f/a;

    .line 202
    iget-object v1, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->context:Lccsanandroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->properties:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/mbnative/f/a;->a(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources;Ljava/util/Map;)V

    .line 204
    :cond_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->nativeProvider:Lccsancom/mbridge/msdk/mbnative/f/a;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/mbnative/f/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 205
    :catch_1
    move-exception p1

    .line 206
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 207
    :goto_1
    goto :goto_2

    .line 210
    :cond_3
    sget-object p1, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->TAG:Ljava/lang/String;

    const-string v0, "no unit id."

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :goto_2
    return-void
.end method


# virtual methods
.method public addTemplate(Lccsancom/mbridge/msdk/out/NativeListener$Template;)V
    .locals 1

    .line 129
    if-eqz p1, :cond_1

    .line 130
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->templateList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->templateList:Ljava/util/List;

    .line 133
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->templateList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_1
    return-void
.end method

.method public bidLoad(Ljava/lang/String;)V
    .locals 2

    .line 104
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->properties:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->properties:Ljava/util/Map;

    const-string v1, "unit_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->loadMB(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_0
    sget-object p1, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->TAG:Ljava/lang/String;

    const-string v0, "no unit id."

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :goto_0
    return-void
.end method

.method public bidRelease()V
    .locals 1

    .line 113
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->nativeProvider:Lccsancom/mbridge/msdk/mbnative/f/a;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/mbnative/f/a;->d()V

    .line 116
    :cond_0
    return-void
.end method

.method public buildTemplateString()Ljava/lang/String;
    .locals 7

    .line 149
    nop

    .line 151
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->templateList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 152
    const-string v0, "[{$native_info}]"

    .line 153
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 154
    iget-object v2, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->templateList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ","

    if-eqz v3, :cond_0

    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/mbridge/msdk/out/NativeListener$Template;

    .line 155
    const-string v5, "{\"id\":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/out/NativeListener$Template;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "\"ad_num\":"

    .line 156
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/out/NativeListener$Template;->getAdNum()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "},"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    goto :goto_0

    .line 158
    :cond_0
    const-string v2, "{$native_info}"

    const/4 v3, 0x0

    .line 159
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuffer;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 158
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 162
    :cond_1
    goto :goto_1

    .line 161
    :catch_0
    move-exception v0

    .line 163
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public clearCacheByUnitid(Ljava/lang/String;)V
    .locals 1

    .line 322
    :try_start_0
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/x;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    return-void

    .line 326
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v0

    .line 325
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/d;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/d;

    move-result-object v0

    .line 327
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/db/d;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    goto :goto_0

    .line 328
    :catch_0
    move-exception p1

    .line 329
    sget-object v0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :goto_0
    return-void
.end method

.method public clearVideoCache()V
    .locals 2

    .line 312
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->nativeProvider:Lccsancom/mbridge/msdk/mbnative/f/a;

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/mbnative/f/a;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :cond_0
    goto :goto_0

    .line 315
    :catch_0
    move-exception v0

    .line 316
    sget-object v1, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :goto_0
    return-void
.end method

.method public getAdListener()Lccsancom/mbridge/msdk/mbnative/d/a;
    .locals 1

    .line 259
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->adListener:Lccsancom/mbridge/msdk/mbnative/d/a;

    return-object v0
.end method

.method public getTrackingListener()Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;
    .locals 1

    .line 273
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->trackingListener:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    return-object v0
.end method

.method public handleResult(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .locals 3

    .line 138
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->clickControler:Lccsancom/mbridge/msdk/click/a;

    if-nez v0, :cond_1

    .line 139
    const/4 v0, 0x0

    .line 140
    iget-object v1, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->map:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 141
    const-string v0, "unit_id"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 143
    :cond_0
    new-instance v1, Lccsancom/mbridge/msdk/click/a;

    iget-object v2, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->context:Lccsanandroid/content/Context;

    invoke-direct {v1, v2, v0}, Lccsancom/mbridge/msdk/click/a;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->clickControler:Lccsancom/mbridge/msdk/click/a;

    .line 145
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->clickControler:Lccsancom/mbridge/msdk/click/a;

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/click/a;->a(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public registerView(Lccsanandroid/view/View;Lccsancom/mbridge/msdk/out/Campaign;)V
    .locals 4

    .line 215
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->nativeProvider:Lccsancom/mbridge/msdk/mbnative/f/a;

    if-nez v0, :cond_1

    .line 216
    new-instance v0, Lccsancom/mbridge/msdk/mbnative/f/a;

    iget-object v1, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->adListener:Lccsancom/mbridge/msdk/mbnative/d/a;

    iget-object v2, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->trackingListener:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    invoke-direct {v0, v1, v2}, Lccsancom/mbridge/msdk/mbnative/f/a;-><init>(Lccsancom/mbridge/msdk/mbnative/d/a;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->nativeProvider:Lccsancom/mbridge/msdk/mbnative/f/a;

    .line 217
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->properties:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->properties:Ljava/util/Map;

    const-string v1, "handler_controller"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->nativeProvider:Lccsancom/mbridge/msdk/mbnative/f/a;

    iget-object v1, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->context:Lccsanandroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->properties:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/mbnative/f/a;->a(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources;Ljava/util/Map;)V

    .line 222
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->nativeProvider:Lccsancom/mbridge/msdk/mbnative/f/a;

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/mbnative/f/a;->a(Lccsanandroid/view/View;Lccsancom/mbridge/msdk/out/Campaign;)V

    .line 223
    return-void
.end method

.method public registerView(Lccsanandroid/view/View;Ljava/util/List;Lccsancom/mbridge/msdk/out/Campaign;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/view/View;",
            "Ljava/util/List<",
            "Lccsanandroid/view/View;",
            ">;",
            "Lccsancom/mbridge/msdk/out/Campaign;",
            ")V"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->nativeProvider:Lccsancom/mbridge/msdk/mbnative/f/a;

    if-nez v0, :cond_1

    .line 227
    new-instance v0, Lccsancom/mbridge/msdk/mbnative/f/a;

    iget-object v1, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->adListener:Lccsancom/mbridge/msdk/mbnative/d/a;

    iget-object v2, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->trackingListener:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    invoke-direct {v0, v1, v2}, Lccsancom/mbridge/msdk/mbnative/f/a;-><init>(Lccsancom/mbridge/msdk/mbnative/d/a;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->nativeProvider:Lccsancom/mbridge/msdk/mbnative/f/a;

    .line 228
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->properties:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->properties:Ljava/util/Map;

    const-string v1, "handler_controller"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->nativeProvider:Lccsancom/mbridge/msdk/mbnative/f/a;

    iget-object v1, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->context:Lccsanandroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->properties:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/mbnative/f/a;->a(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources;Ljava/util/Map;)V

    .line 233
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->nativeProvider:Lccsancom/mbridge/msdk/mbnative/f/a;

    invoke-virtual {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/mbnative/f/a;->a(Lccsanandroid/view/View;Ljava/util/List;Lccsancom/mbridge/msdk/out/Campaign;)V

    .line 234
    return-void
.end method

.method public setAdListener(Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;)V
    .locals 1

    .line 263
    new-instance v0, Lccsancom/mbridge/msdk/mbnative/d/a;

    invoke-direct {v0, p1}, Lccsancom/mbridge/msdk/mbnative/d/a;-><init>(Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->adListener:Lccsancom/mbridge/msdk/mbnative/d/a;

    .line 264
    nop

    .line 265
    sget-object p1, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->mUnitID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/mbnative/d/a;->a(Ljava/lang/String;)V

    .line 267
    iget-object p1, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->nativeProvider:Lccsancom/mbridge/msdk/mbnative/f/a;

    if-eqz p1, :cond_0

    .line 268
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->adListener:Lccsancom/mbridge/msdk/mbnative/d/a;

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/mbnative/f/a;->a(Lccsancom/mbridge/msdk/mbnative/d/a;)V

    .line 270
    :cond_0
    return-void
.end method

.method public setMustBrowser(Z)V
    .locals 0

    .line 40
    sput-boolean p1, Lccsancom/mbridge/msdk/foundation/tools/t;->a:Z

    .line 41
    return-void
.end method

.method public setTrackingListener(Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V
    .locals 1

    .line 277
    iput-object p1, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->trackingListener:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    .line 278
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->nativeProvider:Lccsancom/mbridge/msdk/mbnative/f/a;

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/mbnative/f/a;->a(Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 281
    :cond_0
    return-void
.end method

.method public unregisterView(Lccsanandroid/view/View;Lccsancom/mbridge/msdk/out/Campaign;)V
    .locals 4

    .line 237
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->nativeProvider:Lccsancom/mbridge/msdk/mbnative/f/a;

    if-nez v0, :cond_1

    .line 238
    new-instance v0, Lccsancom/mbridge/msdk/mbnative/f/a;

    iget-object v1, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->adListener:Lccsancom/mbridge/msdk/mbnative/d/a;

    iget-object v2, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->trackingListener:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    invoke-direct {v0, v1, v2}, Lccsancom/mbridge/msdk/mbnative/f/a;-><init>(Lccsancom/mbridge/msdk/mbnative/d/a;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->nativeProvider:Lccsancom/mbridge/msdk/mbnative/f/a;

    .line 239
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->properties:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->properties:Ljava/util/Map;

    const-string v1, "handler_controller"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->nativeProvider:Lccsancom/mbridge/msdk/mbnative/f/a;

    iget-object v1, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->context:Lccsanandroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->properties:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/mbnative/f/a;->a(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources;Ljava/util/Map;)V

    .line 244
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->nativeProvider:Lccsancom/mbridge/msdk/mbnative/f/a;

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/mbnative/f/a;->b(Lccsanandroid/view/View;Lccsancom/mbridge/msdk/out/Campaign;)V

    .line 245
    return-void
.end method

.method public unregisterView(Lccsanandroid/view/View;Ljava/util/List;Lccsancom/mbridge/msdk/out/Campaign;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/view/View;",
            "Ljava/util/List<",
            "Lccsanandroid/view/View;",
            ">;",
            "Lccsancom/mbridge/msdk/out/Campaign;",
            ")V"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->nativeProvider:Lccsancom/mbridge/msdk/mbnative/f/a;

    if-nez v0, :cond_1

    .line 249
    new-instance v0, Lccsancom/mbridge/msdk/mbnative/f/a;

    iget-object v1, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->adListener:Lccsancom/mbridge/msdk/mbnative/d/a;

    iget-object v2, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->trackingListener:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    invoke-direct {v0, v1, v2}, Lccsancom/mbridge/msdk/mbnative/f/a;-><init>(Lccsancom/mbridge/msdk/mbnative/d/a;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->nativeProvider:Lccsancom/mbridge/msdk/mbnative/f/a;

    .line 250
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->properties:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->properties:Ljava/util/Map;

    const-string v1, "handler_controller"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->nativeProvider:Lccsancom/mbridge/msdk/mbnative/f/a;

    iget-object v1, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->context:Lccsanandroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->properties:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/mbnative/f/a;->a(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources;Ljava/util/Map;)V

    .line 255
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBBidNativeHandler;->nativeProvider:Lccsancom/mbridge/msdk/mbnative/f/a;

    invoke-virtual {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/mbnative/f/a;->b(Lccsanandroid/view/View;Ljava/util/List;Lccsancom/mbridge/msdk/out/Campaign;)V

    .line 256
    return-void
.end method
