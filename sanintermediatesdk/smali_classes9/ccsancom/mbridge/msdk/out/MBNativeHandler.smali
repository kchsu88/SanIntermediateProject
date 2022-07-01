.class public Lccsancom/mbridge/msdk/out/MBNativeHandler;
.super Lccsancom/mbridge/msdk/out/MBCommonHandler;
.source "MBNativeHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/out/MBNativeHandler$KeyWordInfo;
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

    .line 34
    const-class v0, Lccsancom/mbridge/msdk/out/MBNativeHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Lccsancom/mbridge/msdk/out/MBCommonHandler;-><init>()V

    .line 26
    new-instance v0, Lccsancom/mbridge/msdk/mbnative/d/a;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/mbnative/d/a;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->adListener:Lccsancom/mbridge/msdk/mbnative/d/a;

    .line 44
    iput-object p1, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->context:Lccsanandroid/content/Context;

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

    .line 49
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->map:Ljava/util/Map;

    if-eqz p1, :cond_2

    const-string v0, "unit_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 50
    iget-object p1, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->map:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 51
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 52
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->adListener:Lccsancom/mbridge/msdk/mbnative/d/a;

    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/mbnative/d/a;->a(Ljava/lang/String;)V

    .line 55
    :cond_1
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 57
    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
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

    .line 64
    const-string v0, "native_video_height"

    const-string v1, "native_video_width"

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/out/MBCommonHandler;-><init>(Ljava/util/Map;Lccsanandroid/content/Context;)V

    .line 26
    new-instance v2, Lccsancom/mbridge/msdk/mbnative/d/a;

    invoke-direct {v2}, Lccsancom/mbridge/msdk/mbnative/d/a;-><init>()V

    iput-object v2, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->adListener:Lccsancom/mbridge/msdk/mbnative/d/a;

    .line 65
    iput-object p2, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->context:Lccsanandroid/content/Context;

    .line 66
    iput-object p1, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->map:Ljava/util/Map;

    .line 67
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    .line 68
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

    .line 88
    :goto_1
    if-eqz p1, :cond_3

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 90
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 91
    iget-object p2, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->adListener:Lccsancom/mbridge/msdk/mbnative/d/a;

    if-eqz p2, :cond_2

    .line 92
    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/mbnative/d/a;->a(Ljava/lang/String;)V

    .line 94
    :cond_2
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 95
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 96
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

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 104
    sput-object p1, Lccsancom/mbridge/msdk/out/MBNativeHandler;->mUnitID:Ljava/lang/String;

    .line 105
    const-string v1, "unit_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object p1, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, ""

    :cond_0
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    const-string p1, "MVNativePlugin"

    const/4 v1, 0x0

    aput-object p1, p0, v1

    const-string p1, "plugin_name"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "layout_type"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
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

    .line 151
    nop

    .line 153
    if-eqz p0, :cond_1

    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 154
    const-string v0, "[{$native_info}]"

    .line 155
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 156
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

    .line 157
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

    .line 158
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

    .line 159
    goto :goto_0

    .line 160
    :cond_0
    const-string p0, "{$native_info}"

    const/4 v2, 0x0

    .line 161
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 160
    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    .line 163
    :catch_0
    move-exception p0

    goto :goto_1

    .line 164
    :cond_1
    nop

    .line 165
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private loadMB()Z
    .locals 4

    .line 180
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->properties:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->properties:Ljava/util/Map;

    const-string v1, "unit_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->templateList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 183
    :try_start_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/out/MBNativeHandler;->buildTemplateString()Ljava/lang/String;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->properties:Ljava/util/Map;

    const-string v2, "native_info"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    sget-object v0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->TAG:Ljava/lang/String;

    const-string v1, "MBSDK set template error"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->properties:Ljava/util/Map;

    const-string v1, "handler_controller"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->nativeProvider:Lccsancom/mbridge/msdk/mbnative/f/a;

    if-nez v0, :cond_1

    .line 192
    new-instance v0, Lccsancom/mbridge/msdk/mbnative/f/a;

    iget-object v1, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->adListener:Lccsancom/mbridge/msdk/mbnative/d/a;

    iget-object v2, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->trackingListener:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    invoke-direct {v0, v1, v2}, Lccsancom/mbridge/msdk/mbnative/f/a;-><init>(Lccsancom/mbridge/msdk/mbnative/d/a;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->nativeProvider:Lccsancom/mbridge/msdk/mbnative/f/a;

    .line 193
    iget-object v1, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->context:Lccsanandroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->properties:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/mbnative/f/a;->a(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources;Ljava/util/Map;)V

    .line 195
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->nativeProvider:Lccsancom/mbridge/msdk/mbnative/f/a;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/mbnative/f/a;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 196
    :catch_1
    move-exception v0

    .line 197
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 198
    :goto_1
    goto :goto_2

    .line 201
    :cond_2
    sget-object v0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->TAG:Ljava/lang/String;

    const-string v1, "no unit id."

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :goto_2
    const/4 v0, 0x1

    return v0
.end method

.method private loadMBFrame()Z
    .locals 4

    .line 216
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->templateList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 218
    :try_start_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/out/MBNativeHandler;->buildTemplateString()Ljava/lang/String;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->properties:Ljava/util/Map;

    const-string v2, "native_info"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    sget-object v0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->TAG:Ljava/lang/String;

    const-string v1, "MBSDK set template error"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->properties:Ljava/util/Map;

    const-string v1, "handler_controller"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->nativeProvider:Lccsancom/mbridge/msdk/mbnative/f/a;

    if-nez v0, :cond_1

    .line 227
    new-instance v0, Lccsancom/mbridge/msdk/mbnative/f/a;

    iget-object v1, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->adListener:Lccsancom/mbridge/msdk/mbnative/d/a;

    iget-object v2, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->trackingListener:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    invoke-direct {v0, v1, v2}, Lccsancom/mbridge/msdk/mbnative/f/a;-><init>(Lccsancom/mbridge/msdk/mbnative/d/a;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->nativeProvider:Lccsancom/mbridge/msdk/mbnative/f/a;

    .line 228
    iget-object v1, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->context:Lccsanandroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->properties:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/mbnative/f/a;->a(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources;Ljava/util/Map;)V

    .line 230
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->nativeProvider:Lccsancom/mbridge/msdk/mbnative/f/a;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/mbnative/f/a;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 233
    goto :goto_1

    .line 231
    :catch_1
    move-exception v0

    .line 232
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 234
    :goto_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public addTemplate(Lccsancom/mbridge/msdk/out/NativeListener$Template;)V
    .locals 1

    .line 113
    if-eqz p1, :cond_1

    .line 114
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->templateList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->templateList:Ljava/util/List;

    .line 117
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->templateList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_1
    return-void
.end method

.method public buildTemplateString()Ljava/lang/String;
    .locals 7

    .line 133
    nop

    .line 135
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->templateList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 136
    const-string v0, "[{$native_info}]"

    .line 137
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 138
    iget-object v2, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->templateList:Ljava/util/List;

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

    .line 139
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

    .line 140
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

    .line 141
    goto :goto_0

    .line 142
    :cond_0
    const-string v2, "{$native_info}"

    const/4 v3, 0x0

    .line 143
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuffer;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 142
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 146
    :cond_1
    goto :goto_1

    .line 145
    :catch_0
    move-exception v0

    .line 147
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public clearCacheByUnitid(Ljava/lang/String;)V
    .locals 1

    .line 354
    :try_start_0
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/x;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    return-void

    .line 358
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v0

    .line 357
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/d;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/d;

    move-result-object v0

    .line 359
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/db/d;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    goto :goto_0

    .line 360
    :catch_0
    move-exception p1

    .line 361
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 363
    :goto_0
    return-void
.end method

.method public clearVideoCache()V
    .locals 1

    .line 344
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->nativeProvider:Lccsancom/mbridge/msdk/mbnative/f/a;

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/mbnative/f/a;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :cond_0
    goto :goto_0

    .line 347
    :catch_0
    move-exception v0

    .line 348
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 350
    :goto_0
    return-void
.end method

.method public getAdListener()Lccsancom/mbridge/msdk/mbnative/d/a;
    .locals 1

    .line 290
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->adListener:Lccsancom/mbridge/msdk/mbnative/d/a;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 366
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->nativeProvider:Lccsancom/mbridge/msdk/mbnative/f/a;

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/mbnative/f/a;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 369
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getTrackingListener()Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;
    .locals 1

    .line 304
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->trackingListener:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    return-object v0
.end method

.method public handleResult(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .locals 3

    .line 122
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->clickControler:Lccsancom/mbridge/msdk/click/a;

    if-nez v0, :cond_1

    .line 123
    const/4 v0, 0x0

    .line 124
    iget-object v1, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->map:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 125
    const-string v0, "unit_id"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 127
    :cond_0
    new-instance v1, Lccsancom/mbridge/msdk/click/a;

    iget-object v2, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->context:Lccsanandroid/content/Context;

    invoke-direct {v1, v2, v0}, Lccsancom/mbridge/msdk/click/a;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->clickControler:Lccsancom/mbridge/msdk/click/a;

    .line 129
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->clickControler:Lccsancom/mbridge/msdk/click/a;

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/click/a;->a(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public load()Z
    .locals 2

    .line 171
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->properties:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->properties:Ljava/util/Map;

    const-string v1, "unit_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-direct {p0}, Lccsancom/mbridge/msdk/out/MBNativeHandler;->loadMB()Z

    goto :goto_0

    .line 174
    :cond_0
    sget-object v0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->TAG:Ljava/lang/String;

    const-string v1, "no unit id."

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public loadFrame()Z
    .locals 2

    .line 207
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->properties:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->properties:Ljava/util/Map;

    const-string v1, "unit_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    invoke-direct {p0}, Lccsancom/mbridge/msdk/out/MBNativeHandler;->loadMBFrame()Z

    goto :goto_0

    .line 210
    :cond_0
    sget-object v0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->TAG:Ljava/lang/String;

    const-string v1, "no unit id."

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public registerView(Lccsanandroid/view/View;Lccsancom/mbridge/msdk/out/Campaign;)V
    .locals 4

    .line 238
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->nativeProvider:Lccsancom/mbridge/msdk/mbnative/f/a;

    if-nez v0, :cond_1

    .line 239
    new-instance v0, Lccsancom/mbridge/msdk/mbnative/f/a;

    iget-object v1, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->adListener:Lccsancom/mbridge/msdk/mbnative/d/a;

    iget-object v2, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->trackingListener:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    invoke-direct {v0, v1, v2}, Lccsancom/mbridge/msdk/mbnative/f/a;-><init>(Lccsancom/mbridge/msdk/mbnative/d/a;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->nativeProvider:Lccsancom/mbridge/msdk/mbnative/f/a;

    .line 240
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->properties:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->properties:Ljava/util/Map;

    const-string v1, "handler_controller"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->nativeProvider:Lccsancom/mbridge/msdk/mbnative/f/a;

    iget-object v1, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->context:Lccsanandroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->properties:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/mbnative/f/a;->a(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources;Ljava/util/Map;)V

    .line 245
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->nativeProvider:Lccsancom/mbridge/msdk/mbnative/f/a;

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/mbnative/f/a;->a(Lccsanandroid/view/View;Lccsancom/mbridge/msdk/out/Campaign;)V

    .line 246
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

    .line 249
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->nativeProvider:Lccsancom/mbridge/msdk/mbnative/f/a;

    if-nez v0, :cond_1

    .line 250
    new-instance v0, Lccsancom/mbridge/msdk/mbnative/f/a;

    iget-object v1, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->adListener:Lccsancom/mbridge/msdk/mbnative/d/a;

    iget-object v2, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->trackingListener:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    invoke-direct {v0, v1, v2}, Lccsancom/mbridge/msdk/mbnative/f/a;-><init>(Lccsancom/mbridge/msdk/mbnative/d/a;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->nativeProvider:Lccsancom/mbridge/msdk/mbnative/f/a;

    .line 251
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->properties:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->properties:Ljava/util/Map;

    const-string v1, "handler_controller"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->nativeProvider:Lccsancom/mbridge/msdk/mbnative/f/a;

    iget-object v1, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->context:Lccsanandroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->properties:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/mbnative/f/a;->a(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources;Ljava/util/Map;)V

    .line 256
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->nativeProvider:Lccsancom/mbridge/msdk/mbnative/f/a;

    invoke-virtual {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/mbnative/f/a;->a(Lccsanandroid/view/View;Ljava/util/List;Lccsancom/mbridge/msdk/out/Campaign;)V

    .line 257
    return-void
.end method

.method public release()V
    .locals 1

    .line 283
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->nativeProvider:Lccsancom/mbridge/msdk/mbnative/f/a;

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/mbnative/f/a;->d()V

    .line 286
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->trackingListener:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    .line 287
    return-void
.end method

.method public setAdListener(Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;)V
    .locals 1

    .line 294
    new-instance v0, Lccsancom/mbridge/msdk/mbnative/d/a;

    invoke-direct {v0, p1}, Lccsancom/mbridge/msdk/mbnative/d/a;-><init>(Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->adListener:Lccsancom/mbridge/msdk/mbnative/d/a;

    .line 295
    nop

    .line 296
    sget-object p1, Lccsancom/mbridge/msdk/out/MBNativeHandler;->mUnitID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/mbnative/d/a;->a(Ljava/lang/String;)V

    .line 298
    iget-object p1, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->nativeProvider:Lccsancom/mbridge/msdk/mbnative/f/a;

    if-eqz p1, :cond_0

    .line 299
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->adListener:Lccsancom/mbridge/msdk/mbnative/d/a;

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/mbnative/f/a;->a(Lccsancom/mbridge/msdk/mbnative/d/a;)V

    .line 301
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

    .line 308
    iput-object p1, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->trackingListener:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    .line 309
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->nativeProvider:Lccsancom/mbridge/msdk/mbnative/f/a;

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/mbnative/f/a;->a(Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 312
    :cond_0
    return-void
.end method

.method public unregisterView(Lccsanandroid/view/View;Lccsancom/mbridge/msdk/out/Campaign;)V
    .locals 4

    .line 260
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->nativeProvider:Lccsancom/mbridge/msdk/mbnative/f/a;

    if-nez v0, :cond_1

    .line 261
    new-instance v0, Lccsancom/mbridge/msdk/mbnative/f/a;

    iget-object v1, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->adListener:Lccsancom/mbridge/msdk/mbnative/d/a;

    iget-object v2, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->trackingListener:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    invoke-direct {v0, v1, v2}, Lccsancom/mbridge/msdk/mbnative/f/a;-><init>(Lccsancom/mbridge/msdk/mbnative/d/a;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->nativeProvider:Lccsancom/mbridge/msdk/mbnative/f/a;

    .line 262
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->properties:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->properties:Ljava/util/Map;

    const-string v1, "handler_controller"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->nativeProvider:Lccsancom/mbridge/msdk/mbnative/f/a;

    iget-object v1, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->context:Lccsanandroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->properties:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/mbnative/f/a;->a(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources;Ljava/util/Map;)V

    .line 267
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->nativeProvider:Lccsancom/mbridge/msdk/mbnative/f/a;

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/mbnative/f/a;->b(Lccsanandroid/view/View;Lccsancom/mbridge/msdk/out/Campaign;)V

    .line 268
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

    .line 271
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->nativeProvider:Lccsancom/mbridge/msdk/mbnative/f/a;

    if-nez v0, :cond_1

    .line 272
    new-instance v0, Lccsancom/mbridge/msdk/mbnative/f/a;

    iget-object v1, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->adListener:Lccsancom/mbridge/msdk/mbnative/d/a;

    iget-object v2, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->trackingListener:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    invoke-direct {v0, v1, v2}, Lccsancom/mbridge/msdk/mbnative/f/a;-><init>(Lccsancom/mbridge/msdk/mbnative/d/a;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->nativeProvider:Lccsancom/mbridge/msdk/mbnative/f/a;

    .line 273
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->properties:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->properties:Ljava/util/Map;

    const-string v1, "handler_controller"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->nativeProvider:Lccsancom/mbridge/msdk/mbnative/f/a;

    iget-object v1, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->context:Lccsanandroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->properties:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/mbnative/f/a;->a(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources;Ljava/util/Map;)V

    .line 278
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/MBNativeHandler;->nativeProvider:Lccsancom/mbridge/msdk/mbnative/f/a;

    invoke-virtual {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/mbnative/f/a;->b(Lccsanandroid/view/View;Ljava/util/List;Lccsancom/mbridge/msdk/out/Campaign;)V

    .line 279
    return-void
.end method
