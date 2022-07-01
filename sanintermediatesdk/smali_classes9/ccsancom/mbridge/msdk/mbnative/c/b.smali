.class public Lccsancom/mbridge/msdk/mbnative/c/b;
.super Ljava/lang/Object;
.source "NativeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/mbnative/c/b$b;,
        Lccsancom/mbridge/msdk/mbnative/c/b$g;,
        Lccsancom/mbridge/msdk/mbnative/c/b$d;,
        Lccsancom/mbridge/msdk/mbnative/c/b$a;,
        Lccsancom/mbridge/msdk/mbnative/c/b$c;,
        Lccsancom/mbridge/msdk/mbnative/c/b$f;,
        Lccsancom/mbridge/msdk/mbnative/c/b$e;
    }
.end annotation


# static fields
.field private static A:Z

.field public static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/lang/String;


# instance fields
.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:Lccsancom/mbridge/msdk/foundation/same/e/b;

.field private G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/mbnative/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/mbnative/c/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private I:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lccsancom/mbridge/msdk/foundation/same/e/a;",
            ">;"
        }
    .end annotation
.end field

.field private J:I

.field private K:I

.field private L:Lccsancom/mbridge/msdk/mbnative/c/b$a;

.field private M:Z

.field private N:Z

.field private O:Ljava/util/Timer;

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:Lccsancom/mbridge/msdk/b/d;

.field private S:J

.field private T:I

.field private U:I

.field private V:Z

.field private W:I

.field private X:I

.field private Y:Z

.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lccsancom/mbridge/msdk/b/c;

.field private g:Lccsancom/mbridge/msdk/mbnative/d/a;

.field private h:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

.field private i:Lccsanandroid/content/Context;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/String;

.field private o:Lccsancom/mbridge/msdk/mbnative/c/b$e;

.field private p:Lccsancom/mbridge/msdk/foundation/same/report/c;

.field private q:Ljava/lang/String;

.field private r:Lccsancom/mbridge/msdk/click/a;

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:Ljava/lang/String;

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 96
    const-class v0, Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/mbnative/c/b;->e:Ljava/lang/String;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/mbnative/c/b;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x1

    iput v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->s:I

    .line 113
    iput v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->t:I

    .line 114
    const/4 v1, -0x1

    iput v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->u:I

    .line 115
    const/4 v1, 0x0

    iput v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->v:I

    .line 117
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->x:Z

    .line 118
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->y:Z

    .line 119
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->z:Z

    .line 122
    iput v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->B:I

    .line 123
    iput v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->C:I

    .line 125
    iput v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->D:I

    .line 126
    iput v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->E:I

    .line 132
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->I:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 134
    iput v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->J:I

    .line 137
    const/4 v0, 0x2

    iput v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->K:I

    .line 146
    const-string v0, ""

    iput-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->P:Ljava/lang/String;

    .line 147
    iput-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->Q:Ljava/lang/String;

    .line 316
    return-void
.end method

.method public constructor <init>(Lccsancom/mbridge/msdk/mbnative/d/a;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;Ljava/util/Map;Lccsanandroid/content/Context;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/mbnative/d/a;",
            "Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lccsanandroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 189
    const-string v0, "native_info"

    const-string v1, "com.mbridge.msdk.videocommon.download.c"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v2, 0x1

    .line 2326
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 112
    iput v2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->s:I

    .line 113
    iput v2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->t:I

    .line 114
    const/4 v4, -0x1

    iput v4, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->u:I

    .line 115
    const/4 v4, 0x0

    iput v4, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->v:I

    .line 117
    iput-boolean v4, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->x:Z

    .line 118
    iput-boolean v4, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->y:Z

    .line 119
    iput-boolean v4, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->z:Z

    .line 122
    iput v4, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->B:I

    .line 123
    iput v4, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->C:I

    .line 125
    iput v4, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->D:I

    .line 126
    iput v4, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->E:I

    .line 132
    new-instance v5, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v5, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->I:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 134
    iput v2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->J:I

    .line 137
    const/4 v5, 0x2

    iput v5, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->K:I

    .line 146
    const-string v6, ""

    iput-object v6, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->P:Ljava/lang/String;

    .line 147
    iput-object v6, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->Q:Ljava/lang/String;

    .line 190
    iput-object p4, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->i:Lccsanandroid/content/Context;

    .line 191
    iput-object p3, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->d:Ljava/util/Map;

    .line 192
    new-instance v7, Lccsancom/mbridge/msdk/b/c;

    invoke-direct {v7}, Lccsancom/mbridge/msdk/b/c;-><init>()V

    iput-object v7, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->f:Lccsancom/mbridge/msdk/b/c;

    .line 193
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->g:Lccsancom/mbridge/msdk/mbnative/d/a;

    .line 194
    iput-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->h:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    .line 195
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->G:Ljava/util/List;

    .line 196
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->H:Ljava/util/List;

    .line 197
    const-string p1, "unit_id"

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->j:Ljava/lang/String;

    .line 198
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 199
    return-void

    .line 202
    :cond_0
    sget-object p1, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 203
    sget-object p1, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->k:Ljava/lang/String;

    goto :goto_0

    .line 205
    :cond_1
    iput-object v6, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->k:Ljava/lang/String;

    .line 208
    :goto_0
    const-string p1, "isPreloadImg"

    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 209
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sput-boolean p1, Lccsancom/mbridge/msdk/mbnative/c/b;->A:Z

    .line 212
    :cond_2
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->l:Ljava/util/Queue;

    .line 213
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->m:Ljava/util/Queue;

    .line 214
    new-instance p1, Lccsancom/mbridge/msdk/foundation/same/e/b;

    iget-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->i:Lccsanandroid/content/Context;

    invoke-direct {p1, p2}, Lccsancom/mbridge/msdk/foundation/same/e/b;-><init>(Lccsanandroid/content/Context;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->F:Lccsancom/mbridge/msdk/foundation/same/e/b;

    .line 215
    invoke-static {}, Lccsanandroid/os/Looper;->myLooper()Lccsanandroid/os/Looper;

    move-result-object p1

    if-nez p1, :cond_3

    .line 216
    invoke-static {}, Lccsanandroid/os/Looper;->prepare()V

    .line 218
    :cond_3
    new-instance p1, Lccsancom/mbridge/msdk/mbnative/c/b$e;

    invoke-direct {p1, p0}, Lccsancom/mbridge/msdk/mbnative/c/b$e;-><init>(Lccsancom/mbridge/msdk/mbnative/c/b;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->o:Lccsancom/mbridge/msdk/mbnative/c/b$e;

    .line 220
    const-string p1, "catetory"

    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 221
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->w:Ljava/lang/String;

    .line 225
    :cond_4
    nop

    .line 226
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/mbnative/c/c;->b()Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->j:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 227
    invoke-static {}, Lccsancom/mbridge/msdk/mbnative/c/c;->b()Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->j:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 226
    :cond_5
    const/4 p1, 0x0

    .line 229
    :goto_1
    const-string p2, "ad_frame_num"

    const-string v7, "ad_num"

    if-nez p1, :cond_9

    .line 230
    :try_start_1
    invoke-interface {p3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 231
    invoke-interface {p3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 232
    if-ge p1, v2, :cond_6

    .line 233
    const/4 p1, 0x1

    .line 235
    :cond_6
    const/16 v7, 0xa

    if-le p1, v7, :cond_7

    .line 236
    const/16 p1, 0xa

    .line 238
    :cond_7
    iput p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->t:I

    .line 239
    iput p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->s:I

    .line 242
    :cond_8
    invoke-interface {p3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 243
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->D:I

    goto :goto_2

    .line 247
    :cond_9
    invoke-static {}, Lccsancom/mbridge/msdk/mbnative/c/c;->d()Ljava/util/Map;

    move-result-object p1

    iget-object v8, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->j:Ljava/lang/String;

    invoke-interface {p1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 248
    invoke-static {}, Lccsancom/mbridge/msdk/mbnative/c/c;->d()Ljava/util/Map;

    move-result-object p1

    iget-object v8, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->j:Ljava/lang/String;

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->t:I

    .line 249
    invoke-interface {p3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 250
    invoke-interface {p3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->B:I

    iput p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->s:I

    .line 252
    :cond_a
    invoke-interface {p3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 253
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->C:I

    iput p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->D:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 259
    :cond_b
    :goto_2
    goto :goto_3

    .line 257
    :catch_0
    move-exception p1

    .line 258
    sget-object p2, Lccsancom/mbridge/msdk/mbnative/c/b;->e:Ljava/lang/String;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbnative/b/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :goto_3
    new-instance p1, Lccsancom/mbridge/msdk/foundation/same/report/c;

    iget-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->i:Lccsanandroid/content/Context;

    invoke-direct {p1, p2}, Lccsancom/mbridge/msdk/foundation/same/report/c;-><init>(Lccsanandroid/content/Context;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->p:Lccsancom/mbridge/msdk/foundation/same/report/c;

    .line 262
    new-instance p1, Lccsancom/mbridge/msdk/click/a;

    iget-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->i:Lccsanandroid/content/Context;

    iget-object v7, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->j:Ljava/lang/String;

    invoke-direct {p1, p2, v7}, Lccsancom/mbridge/msdk/click/a;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->r:Lccsancom/mbridge/msdk/click/a;

    .line 266
    :try_start_2
    const-string p1, "com.mbridge.msdk.nativex.view.MBMediaView"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 267
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 268
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->N:Z

    .line 269
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->d:Ljava/util/Map;

    if-eqz p1, :cond_d

    const-string p2, "native_video_width"

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->d:Ljava/util/Map;

    const-string p2, "native_video_height"

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    const-string p1, "videoSupport"

    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 270
    :cond_c
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->M:Z

    .line 273
    :cond_d
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->i:Lccsanandroid/content/Context;

    iget-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->j:Ljava/lang/String;

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/mbnative/c/d;->a(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 274
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/o;->b()V

    .line 275
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->j:Ljava/lang/String;

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 276
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->i:Lccsanandroid/content/Context;

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object p1

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/db/d;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/d;

    move-result-object p1

    .line 277
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/db/d;->a()V

    .line 278
    nop

    .line 279
    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_e

    .line 280
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_4

    .line 279
    :cond_e
    move-object p1, p2

    .line 282
    :goto_4
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(Ljava/lang/String;)I

    move-result p1

    .line 285
    iget-object p3, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->j:Ljava/lang/String;

    if-gtz p1, :cond_f

    iget p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->s:I

    .line 2319
    :cond_f
    nop

    .line 2321
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v0

    invoke-virtual {v0, v6, p3}, Lccsancom/mbridge/msdk/b/b;->e(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/b/d;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->R:Lccsancom/mbridge/msdk/b/d;

    .line 2322
    if-nez v0, :cond_10

    .line 2323
    invoke-static {p3}, Lccsancom/mbridge/msdk/b/d;->d(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/d;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->R:Lccsancom/mbridge/msdk/b/d;

    .line 2325
    :cond_10
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->R:Lccsancom/mbridge/msdk/b/d;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/d;->s()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->a:Ljava/util/List;

    .line 2326
    if-eqz v0, :cond_11

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_11

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2327
    nop

    .line 2328
    invoke-static {v2}, Lccsancom/mbridge/msdk/mbnative/a/c;->a(I)Lccsancom/mbridge/msdk/mbnative/a/b;

    move-result-object v0

    .line 2329
    if-eqz v0, :cond_11

    .line 2330
    invoke-virtual {v0, p3, p1}, Lccsancom/mbridge/msdk/mbnative/a/b;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    goto :goto_5

    .line 2333
    :cond_11
    move-object p1, p2

    :goto_5
    nop

    .line 285
    nop

    .line 287
    if-eqz p1, :cond_14

    .line 288
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 290
    const/4 v0, 0x0

    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_13

    .line 291
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 292
    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_12

    .line 293
    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 296
    :cond_13
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_14

    .line 297
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 298
    const-string v0, "com.mbridge.msdk.videocommon.listener.a"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 299
    const-string v1, "getInstance"

    new-array v6, v4, [Ljava/lang/Class;

    invoke-virtual {p1, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 300
    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v1, p2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 301
    const-string v6, "createUnitCache"

    const/4 v7, 0x5

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Lccsanandroid/content/Context;

    aput-object v9, v8, v4

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v2

    const-class v9, Ljava/util/List;

    aput-object v9, v8, v5

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x3

    aput-object v9, v8, v10

    const/4 v9, 0x4

    aput-object v0, v8, v9

    invoke-virtual {p1, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 302
    new-array v6, v7, [Ljava/lang/Object;

    aput-object p4, v6, v4

    iget-object p4, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->j:Ljava/lang/String;

    aput-object p4, v6, v2

    aput-object p3, v6, v5

    aput-object v3, v6, v10

    aput-object p2, v6, v9

    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string p2, "load"

    new-array p3, v2, [Ljava/lang/Class;

    const-class p4, Ljava/lang/String;

    aput-object p4, p3, v4

    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 305
    new-array p2, v2, [Ljava/lang/Object;

    iget-object p3, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->j:Ljava/lang/String;

    aput-object p3, p2, v4

    invoke-virtual {p1, v1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 311
    :cond_14
    goto :goto_7

    .line 309
    :catchall_0
    move-exception p1

    .line 310
    sget-object p1, Lccsancom/mbridge/msdk/mbnative/c/b;->e:Ljava/lang/String;

    const-string p2, "please import the nativex aar"

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :goto_7
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/mbnative/c/b;I)I
    .locals 0

    .line 95
    iput p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->T:I

    return p1
.end method

.method private a(Ljava/lang/String;)I
    .locals 5

    .line 338
    nop

    .line 340
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 341
    return v0

    .line 343
    :cond_0
    :try_start_0
    new-instance v1, Lccsanorg/json/JSONArray;

    invoke-direct {v1, p1}, Lccsanorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v1}, Lccsanorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 345
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1}, Lccsanorg/json/JSONArray;->length()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 346
    invoke-virtual {v1, p1}, Lccsanorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanorg/json/JSONObject;

    .line 347
    const-string v3, "id"

    invoke-virtual {v2, v3, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 348
    const/4 v4, 0x2

    if-ne v4, v3, :cond_1

    .line 349
    const-string p1, "ad_num"

    invoke-virtual {v2, p1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    return p1

    .line 345
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 356
    :cond_2
    goto :goto_1

    .line 354
    :catch_0
    move-exception p1

    .line 355
    sget-object v1, Lccsancom/mbridge/msdk/mbnative/c/b;->e:Ljava/lang/String;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbnative/b/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :goto_1
    return v0
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/mbnative/c/b;)Lccsancom/mbridge/msdk/foundation/same/report/c;
    .locals 0

    .line 95
    iget-object p0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->p:Lccsancom/mbridge/msdk/foundation/same/report/c;

    return-object p0
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/mbnative/c/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 95
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->q:Ljava/lang/String;

    return-object p1
.end method

.method private a(ILjava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/out/Campaign;",
            ">;)",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/out/Campaign;",
            ">;"
        }
    .end annotation

    .line 1654
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->d:Ljava/util/Map;

    const-string v1, "native_info"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 1655
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 1656
    const/4 p1, 0x0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 1657
    nop

    .line 1658
    if-eqz v1, :cond_0

    .line 1659
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getTemplate()I

    move-result v0

    .line 1661
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1662
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->W:I

    if-lt v0, v1, :cond_2

    .line 1663
    invoke-interface {p2, p1, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    goto :goto_0

    .line 1665
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1666
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->X:I

    if-lt v0, v1, :cond_2

    .line 1667
    invoke-interface {p2, p1, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    .line 1671
    :cond_2
    :goto_0
    return-object p2
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/mbnative/c/b;ILjava/util/List;)Ljava/util/List;
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(ILjava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/mbnative/c/b;Ljava/util/List;Z)Ljava/util/List;
    .locals 6

    .line 95
    nop

    .line 8070
    if-eqz p1, :cond_5

    .line 8071
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 8072
    nop

    .line 8073
    nop

    :goto_0
    if-ltz v0, :cond_5

    .line 8074
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/out/Campaign;

    .line 8075
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v2

    .line 8076
    instance-of v3, v1, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v3, :cond_0

    .line 8077
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, v1

    check-cast v2, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getBidToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8079
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/c;->getInstance()Lccsancom/mbridge/msdk/videocommon/download/c;

    move-result-object v4

    iget-object v5, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->j:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Lccsancom/mbridge/msdk/videocommon/download/c;->a(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/videocommon/download/a;

    move-result-object v2

    .line 8080
    if-eqz p2, :cond_2

    .line 8081
    if-eqz v2, :cond_1

    invoke-direct {p0}, Lccsancom/mbridge/msdk/mbnative/c/b;->e()Lccsancom/mbridge/msdk/b/d;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/b/d;->f()I

    move-result v3

    invoke-static {v2, v3}, Lccsancom/mbridge/msdk/videocommon/download/k;->a(Lccsancom/mbridge/msdk/videocommon/download/a;I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 8083
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/out/Campaign;

    .line 8084
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/out/Campaign;->getType()I

    move-result v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/mbnative/a/c;->a(I)Lccsancom/mbridge/msdk/mbnative/a/b;

    move-result-object v1

    .line 8085
    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->j:Ljava/lang/String;

    iget-object v4, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->P:Ljava/lang/String;

    invoke-virtual {v1, v3, v2, v4}, Lccsancom/mbridge/msdk/mbnative/a/b;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    .line 8086
    goto :goto_1

    .line 8088
    :cond_2
    if-eqz v3, :cond_4

    .line 8089
    move-object v3, v1

    check-cast v3, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 8090
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 8091
    if-eqz v2, :cond_3

    invoke-direct {p0}, Lccsancom/mbridge/msdk/mbnative/c/b;->e()Lccsancom/mbridge/msdk/b/d;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/b/d;->f()I

    move-result v3

    invoke-static {v2, v3}, Lccsancom/mbridge/msdk/videocommon/download/k;->a(Lccsancom/mbridge/msdk/videocommon/download/a;I)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 8093
    :cond_3
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/out/Campaign;

    .line 8094
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/out/Campaign;->getType()I

    move-result v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/mbnative/a/c;->a(I)Lccsancom/mbridge/msdk/mbnative/a/b;

    move-result-object v1

    .line 8095
    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->j:Ljava/lang/String;

    iget-object v4, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->P:Ljava/lang/String;

    invoke-virtual {v1, v3, v2, v4}, Lccsancom/mbridge/msdk/mbnative/a/b;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    .line 8073
    :cond_4
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 8102
    :cond_5
    nop

    .line 95
    return-object p1
.end method

.method private a(IJILjava/lang/String;)V
    .locals 9

    .line 652
    if-nez p4, :cond_2

    .line 653
    invoke-static {p1}, Lccsancom/mbridge/msdk/mbnative/a/c;->a(I)Lccsancom/mbridge/msdk/mbnative/a/b;

    move-result-object v0

    .line 654
    if-eqz v0, :cond_2

    .line 655
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->d:Ljava/util/Map;

    const-string v2, "native_info"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 656
    iget v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->J:I

    iput v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->t:I

    goto :goto_0

    .line 658
    :cond_1
    iget v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->s:I

    iput v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->t:I

    .line 660
    :goto_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->j:Ljava/lang/String;

    iget v2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->t:I

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/mbnative/a/b;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 661
    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/mbnative/c/b;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 662
    return-void

    .line 666
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 674
    invoke-direct/range {p0 .. p5}, Lccsancom/mbridge/msdk/mbnative/c/b;->b(IJILjava/lang/String;)V

    goto :goto_1

    .line 671
    :pswitch_0
    const/4 v2, 0x2

    move-object v1, p0

    move-wide v3, p2

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lccsancom/mbridge/msdk/mbnative/c/b;->b(IJILjava/lang/String;)V

    .line 672
    goto :goto_1

    .line 668
    :pswitch_1
    const/4 v4, 0x1

    iget-object v8, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->P:Ljava/lang/String;

    move-object v3, p0

    move-wide v5, p2

    move v7, p4

    invoke-direct/range {v3 .. v8}, Lccsancom/mbridge/msdk/mbnative/c/b;->b(IJILjava/lang/String;)V

    .line 669
    nop

    .line 677
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lccsanandroid/view/View;Lccsanandroid/view/View$OnClickListener;Ljava/lang/Class;)V
    .locals 2

    .line 1043
    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_2

    .line 1047
    :cond_0
    if-eqz p3, :cond_1

    :try_start_0
    invoke-virtual {p3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1048
    return-void

    .line 1051
    :cond_1
    invoke-virtual {p1, p2}, Lccsanandroid/view/View;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 1052
    instance-of v0, p1, Lccsanandroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 1053
    check-cast p1, Lccsanandroid/view/ViewGroup;

    .line 1054
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lccsanandroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1055
    invoke-virtual {p1, v0}, Lccsanandroid/view/ViewGroup;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v1

    .line 1056
    invoke-direct {p0, v1, p2, p3}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(Lccsanandroid/view/View;Lccsanandroid/view/View$OnClickListener;Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1054
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1061
    :cond_2
    goto :goto_1

    .line 1060
    :catchall_0
    move-exception p1

    .line 1062
    :goto_1
    return-void

    .line 1044
    :cond_3
    :goto_2
    return-void
.end method

.method private a(Lccsanandroid/view/View;Ljava/lang/Class;)V
    .locals 2

    .line 1163
    if-nez p1, :cond_0

    .line 1164
    return-void

    .line 1167
    :cond_0
    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1168
    return-void

    .line 1171
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 1172
    instance-of v0, p1, Lccsanandroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 1173
    check-cast p1, Lccsanandroid/view/ViewGroup;

    .line 1174
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lccsanandroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1175
    invoke-virtual {p1, v0}, Lccsanandroid/view/ViewGroup;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v1

    .line 1176
    invoke-direct {p0, v1, p2}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(Lccsanandroid/view/View;Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1181
    :cond_2
    goto :goto_1

    .line 1180
    :catchall_0
    move-exception p1

    .line 1182
    :goto_1
    return-void
.end method

.method private a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/view/View;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            "Lccsanandroid/view/View;",
            "Ljava/util/List<",
            "Lccsanandroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1014
    const/4 v0, 0x0

    .line 1015
    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->R:Lccsancom/mbridge/msdk/b/d;

    if-eqz v1, :cond_0

    .line 1016
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/b/d;->d()I

    move-result v0

    .line 1018
    :cond_0
    new-instance v1, Lccsancom/mbridge/msdk/mbnative/c/b$f;

    invoke-direct {v1, p1, p2, p3, p0}, Lccsancom/mbridge/msdk/mbnative/c/b$f;-><init>(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/view/View;Ljava/util/List;Lccsancom/mbridge/msdk/mbnative/c/b;)V

    .line 1019
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->I:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez p1, :cond_1

    .line 1020
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->I:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1022
    :cond_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->I:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1023
    new-instance p1, Lccsancom/mbridge/msdk/mbnative/c/b$6;

    invoke-direct {p1, p0, v1}, Lccsancom/mbridge/msdk/mbnative/c/b$6;-><init>(Lccsancom/mbridge/msdk/mbnative/c/b;Lccsancom/mbridge/msdk/mbnative/c/b$f;)V

    .line 6072
    iput-object p1, v1, Lccsancom/mbridge/msdk/foundation/same/e/a;->d:Lccsancom/mbridge/msdk/foundation/same/e/a$b;

    .line 1033
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->o:Lccsancom/mbridge/msdk/mbnative/c/b$e;

    if-eqz p1, :cond_2

    .line 1034
    mul-int/lit16 v0, v0, 0x3e8

    int-to-long p2, v0

    invoke-virtual {p1, v1, p2, p3}, Lccsancom/mbridge/msdk/mbnative/c/b$e;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1038
    :cond_2
    goto :goto_0

    .line 1036
    :catch_0
    move-exception p1

    .line 1037
    sget-object p2, Lccsancom/mbridge/msdk/mbnative/c/b;->e:Ljava/lang/String;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbnative/b/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    :goto_0
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/mbnative/c/b;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 7

    .line 95
    nop

    .line 6959
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isReportClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6960
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setReportClick(Z)V

    .line 6961
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lccsancom/mbridge/msdk/foundation/entity/i;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lccsancom/mbridge/msdk/foundation/entity/i;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/i;->g()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6962
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->i:Lccsanandroid/content/Context;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lccsancom/mbridge/msdk/foundation/entity/i;

    move-result-object p0

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/i;->g()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lccsancom/mbridge/msdk/click/a;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;ZZ)V

    .line 95
    :cond_0
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/mbnative/c/b;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/view/View;Ljava/util/List;)V
    .locals 3

    .line 95
    nop

    .line 7109
    :try_start_0
    new-instance v0, Lccsancom/mbridge/msdk/mbnative/c/b$7;

    invoke-direct {v0, p0, p1}, Lccsancom/mbridge/msdk/mbnative/c/b$7;-><init>(Lccsancom/mbridge/msdk/mbnative/c/b;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 7118
    new-instance p1, Lccsancom/mbridge/msdk/mbnative/c/a;

    new-instance v1, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    invoke-direct {p1, p3, v0, v1}, Lccsancom/mbridge/msdk/mbnative/c/a;-><init>(Ljava/util/List;Lccsancom/mbridge/msdk/mbnative/c/a$a;Lccsanandroid/os/Handler;)V

    .line 7120
    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/mbnative/c/a;->a(Lccsanandroid/view/View;)V

    .line 7122
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->G:Ljava/util/List;

    if-eqz p2, :cond_0

    .line 7123
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7125
    :cond_0
    iget-object p0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->H:Ljava/util/List;

    if-eqz p0, :cond_1

    .line 7126
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7129
    :cond_1
    goto :goto_0

    .line 7128
    :catch_0
    move-exception p0

    .line 95
    :goto_0
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/mbnative/c/b;Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;Ljava/lang/String;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/mbnative/c/b;Ljava/util/List;ILccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2, p3}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(Ljava/util/List;ILccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;)V

    return-void
.end method

.method private a(Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;Ljava/lang/String;)V
    .locals 2

    .line 1643
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->o:Lccsancom/mbridge/msdk/mbnative/c/b$e;

    new-instance v1, Lccsancom/mbridge/msdk/mbnative/c/b$11;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/mbnative/c/b$11;-><init>(Lccsancom/mbridge/msdk/mbnative/c/b;Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/mbnative/c/b$e;->post(Ljava/lang/Runnable;)Z

    .line 1650
    return-void
.end method

.method public static a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 4

    .line 1963
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1964
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1967
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    .line 1966
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/i;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/i;

    move-result-object v0

    .line 1968
    new-instance v1, Lccsancom/mbridge/msdk/foundation/entity/e;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/foundation/entity/e;-><init>()V

    .line 1969
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/e;->a(J)V

    .line 1970
    invoke-virtual {v1, p0}, Lccsancom/mbridge/msdk/foundation/entity/e;->b(Ljava/lang/String;)V

    .line 1971
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lccsancom/mbridge/msdk/foundation/entity/e;->a(Ljava/lang/String;)V

    .line 1972
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/db/i;->a(Lccsancom/mbridge/msdk/foundation/entity/e;)V

    .line 1976
    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;ILccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/out/Campaign;",
            ">;I",
            "Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;",
            ")V"
        }
    .end annotation

    .line 1628
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->o:Lccsancom/mbridge/msdk/mbnative/c/b$e;

    new-instance v1, Lccsancom/mbridge/msdk/mbnative/c/b$10;

    invoke-direct {v1, p0, p1, p3, p2}, Lccsancom/mbridge/msdk/mbnative/c/b$10;-><init>(Lccsancom/mbridge/msdk/mbnative/c/b;Ljava/util/List;Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;I)V

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/mbnative/c/b$e;->post(Ljava/lang/Runnable;)Z

    .line 1640
    return-void
.end method

.method private a(Ljava/util/List;Lccsancom/mbridge/msdk/mbnative/c/b$b;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/out/Campaign;",
            ">;",
            "Lccsancom/mbridge/msdk/mbnative/c/b$b;",
            ")V"
        }
    .end annotation

    .line 2027
    invoke-direct {p0}, Lccsancom/mbridge/msdk/mbnative/c/b;->f()V

    .line 2028
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2029
    new-instance v6, Ljava/util/Timer;

    invoke-direct {v6}, Ljava/util/Timer;-><init>()V

    iput-object v6, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->O:Ljava/util/Timer;

    .line 2030
    new-instance v7, Lccsancom/mbridge/msdk/mbnative/c/b$3;

    move-object v0, v7

    move-object v1, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lccsancom/mbridge/msdk/mbnative/c/b$3;-><init>(Lccsancom/mbridge/msdk/mbnative/c/b;JLccsancom/mbridge/msdk/mbnative/c/b$b;Ljava/util/List;)V

    const-wide/16 p1, 0x0

    const-wide/16 v8, 0x3e8

    move-object v4, v6

    move-object v5, v7

    move-wide v6, p1

    invoke-virtual/range {v4 .. v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 2067
    return-void
.end method

.method private a(I)Z
    .locals 12

    .line 478
    invoke-static {}, Lccsancom/mbridge/msdk/mbnative/c/c;->b()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->j:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 479
    invoke-static {}, Lccsancom/mbridge/msdk/mbnative/c/c;->b()Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->j:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 480
    invoke-static {}, Lccsancom/mbridge/msdk/mbnative/c/c;->a()Ljava/util/Map;

    move-result-object v0

    .line 481
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->j:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 482
    invoke-static {}, Lccsancom/mbridge/msdk/mbnative/c/c;->d()Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->j:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 483
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v5

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v6

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lccsancom/mbridge/msdk/b/b;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;

    move-result-object v5

    .line 485
    if-eqz v4, :cond_0

    .line 486
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->t:I

    .line 489
    :cond_0
    if-eqz v2, :cond_17

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_17

    .line 490
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 491
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 492
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 493
    if-nez v5, :cond_1

    .line 494
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v5

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/b/b;->b()Lccsancom/mbridge/msdk/b/a;

    move-result-object v5

    .line 496
    :cond_1
    invoke-virtual {v5}, Lccsancom/mbridge/msdk/b/a;->v()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long v8, v8, v10

    .line 497
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long/2addr v6, v10

    cmp-long v5, v6, v8

    if-ltz v5, :cond_2

    .line 498
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->j:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b

    .line 500
    :cond_2
    const/4 v5, 0x1

    if-ne p1, v5, :cond_9

    .line 501
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 502
    if-eqz v6, :cond_8

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_8

    .line 503
    iget-object v7, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->g:Lccsancom/mbridge/msdk/mbnative/d/a;

    .line 504
    if-nez v7, :cond_3

    .line 505
    return v1

    .line 507
    :cond_3
    iget v8, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->D:I

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-lt v8, v9, :cond_4

    .line 508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->j:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    invoke-interface {v7, v6}, Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;->onAdFramesLoaded(Ljava/util/List;)V

    .line 511
    return v5

    .line 513
    :cond_4
    iget v8, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->D:I

    if-nez v8, :cond_5

    .line 514
    return v1

    .line 516
    :cond_5
    iget v8, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->C:I

    invoke-interface {v6, v1, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    .line 517
    invoke-interface {v7, v6}, Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;->onAdFramesLoaded(Ljava/util/List;)V

    .line 518
    invoke-interface {v6, v8}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 519
    invoke-interface {v2, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 521
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 522
    nop

    .line 523
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 524
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lccsancom/mbridge/msdk/out/Frame;

    .line 525
    iget v11, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->D:I

    if-ge v1, v11, :cond_6

    goto :goto_1

    .line 527
    :cond_6
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 530
    goto :goto_0

    .line 531
    :cond_7
    invoke-interface {v2, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->j:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    invoke-interface {v7, v8}, Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;->onAdFramesLoaded(Ljava/util/List;)V

    .line 534
    return v5

    .line 537
    :cond_8
    return v1

    .line 539
    :cond_9
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 540
    if-eqz p1, :cond_17

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_17

    .line 541
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 542
    nop

    .line 544
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getType()I

    move-result v2

    if-ne v2, v5, :cond_13

    .line 545
    nop

    .line 546
    iget-object v2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->n:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 547
    iget v2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->B:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_5

    .line 550
    :cond_a
    :try_start_0
    new-instance v2, Lccsanorg/json/JSONArray;

    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->n:Ljava/lang/String;

    invoke-direct {v2, v3}, Lccsanorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 551
    nop

    .line 552
    nop

    .line 553
    invoke-virtual {v2}, Lccsanorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x3

    if-lez v3, :cond_d

    .line 554
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v2}, Lccsanorg/json/JSONArray;->length()I

    move-result v8

    if-ge v3, v8, :cond_e

    .line 555
    invoke-virtual {v2, v3}, Lccsanorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lccsanorg/json/JSONObject;

    .line 556
    const-string v9, "id"

    invoke-virtual {v8, v9, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    const/4 v10, 0x2

    const-string v11, "ad_num"

    if-ne v10, v9, :cond_b

    .line 558
    :try_start_1
    invoke-virtual {v8, v11}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_3

    .line 559
    :cond_b
    if-ne v4, v9, :cond_c

    .line 560
    invoke-virtual {v8, v11}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 554
    :cond_c
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 565
    :cond_d
    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_e
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 566
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getTemplate()I

    move-result v2

    .line 567
    if-ne v4, v2, :cond_f

    .line 568
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_4

    .line 570
    :cond_f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 574
    :goto_4
    goto :goto_5

    .line 572
    :catch_0
    move-exception v2

    .line 573
    sget-object v2, Lccsancom/mbridge/msdk/mbnative/c/b;->e:Ljava/lang/String;

    const-string v3, "load from catch error in get nativeinfo adnum"

    invoke-static {v2, v3}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 576
    :goto_5
    if-lez v2, :cond_12

    .line 578
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 579
    nop

    .line 580
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 581
    if-ne v1, v2, :cond_10

    .line 582
    goto :goto_7

    .line 584
    :cond_10
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 585
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getTemplate()I

    .line 586
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 587
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 588
    add-int/lit8 v1, v1, 0x1

    .line 589
    goto :goto_6

    .line 590
    :cond_11
    :goto_7
    nop

    .line 593
    goto :goto_a

    .line 591
    :cond_12
    return v1

    .line 594
    :cond_13
    iget v2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->B:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 595
    if-lez v2, :cond_16

    .line 596
    nop

    .line 597
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 598
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 599
    if-ne v1, v2, :cond_14

    .line 600
    goto :goto_9

    .line 602
    :cond_14
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 603
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getTemplate()I

    .line 604
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 606
    add-int/lit8 v1, v1, 0x1

    .line 607
    goto :goto_8

    .line 608
    :cond_15
    :goto_9
    nop

    .line 614
    :goto_a
    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(Ljava/util/List;)Z

    .line 616
    return v5

    .line 609
    :cond_16
    return v1

    .line 623
    :cond_17
    :goto_b
    return v1
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/mbnative/c/b;Ljava/util/List;)Z
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/mbnative/c/b;Z)Z
    .locals 0

    .line 95
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->y:Z

    return p1
.end method

.method private a(Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/out/Campaign;",
            ">;)Z"
        }
    .end annotation

    .line 1541
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->P:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1542
    return v1

    .line 1544
    :cond_0
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 1545
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->g:Lccsancom/mbridge/msdk/mbnative/d/a;

    .line 1546
    if-eqz v0, :cond_a

    .line 1548
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 1549
    if-eqz v2, :cond_1

    .line 1550
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getTemplate()I

    move-result v3

    goto :goto_0

    .line 1552
    :cond_1
    const/4 v3, 0x2

    .line 1555
    :goto_0
    iget-object v4, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->i:Lccsanandroid/content/Context;

    invoke-static {v4}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v4

    invoke-static {v4}, Lccsancom/mbridge/msdk/foundation/db/j;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/j;

    move-result-object v4

    .line 1556
    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/db/j;->b()V

    .line 1557
    const/4 v5, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 1558
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 1559
    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lccsancom/mbridge/msdk/foundation/db/j;->a(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1560
    new-instance v7, Lccsancom/mbridge/msdk/foundation/entity/f;

    invoke-direct {v7}, Lccsancom/mbridge/msdk/foundation/entity/f;-><init>()V

    .line 1561
    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lccsancom/mbridge/msdk/foundation/entity/f;->a(Ljava/lang/String;)V

    .line 1562
    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getFca()I

    move-result v8

    invoke-virtual {v7, v8}, Lccsancom/mbridge/msdk/foundation/entity/f;->a(I)V

    .line 1563
    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getFcb()I

    move-result v6

    invoke-virtual {v7, v6}, Lccsancom/mbridge/msdk/foundation/entity/f;->b(I)V

    .line 1564
    invoke-virtual {v7, v1}, Lccsancom/mbridge/msdk/foundation/entity/f;->d(I)V

    .line 1565
    invoke-virtual {v7, v1}, Lccsancom/mbridge/msdk/foundation/entity/f;->c(I)V

    .line 1566
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lccsancom/mbridge/msdk/foundation/entity/f;->a(J)V

    .line 1567
    invoke-virtual {v4, v7}, Lccsancom/mbridge/msdk/foundation/db/j;->a(Lccsancom/mbridge/msdk/foundation/entity/f;)V

    .line 1557
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1571
    :cond_3
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getType()I

    .line 1573
    iget-boolean v2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->N:Z

    const-string v4, "has no ads"

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->M:Z

    if-eqz v2, :cond_7

    .line 1574
    invoke-direct {p0}, Lccsancom/mbridge/msdk/mbnative/c/b;->e()Lccsancom/mbridge/msdk/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/b/d;->h()I

    move-result v1

    .line 1575
    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 1576
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/mbnative/c/b;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 1577
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 1578
    new-instance v2, Lccsancom/mbridge/msdk/mbnative/c/b$8;

    invoke-direct {v2, p0, v1, v3, v0}, Lccsancom/mbridge/msdk/mbnative/c/b$8;-><init>(Lccsancom/mbridge/msdk/mbnative/c/b;Ljava/util/List;ILccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;)V

    invoke-direct {p0, p1, v2}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(Ljava/util/List;Lccsancom/mbridge/msdk/mbnative/c/b$b;)V

    goto :goto_2

    .line 1590
    :cond_4
    invoke-direct {p0, v0, v4}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;Ljava/lang/String;)V

    .line 1592
    :goto_2
    goto :goto_3

    .line 1593
    :cond_5
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/mbnative/c/b;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 1594
    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 1595
    new-instance v2, Lccsancom/mbridge/msdk/mbnative/c/b$9;

    invoke-direct {v2, p0, p1, v3, v0}, Lccsancom/mbridge/msdk/mbnative/c/b$9;-><init>(Lccsancom/mbridge/msdk/mbnative/c/b;Ljava/util/List;ILccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;)V

    invoke-direct {p0, v1, v2}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(Ljava/util/List;Lccsancom/mbridge/msdk/mbnative/c/b$b;)V

    goto :goto_3

    .line 1607
    :cond_6
    invoke-direct {p0, p1, v3, v0}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(Ljava/util/List;ILccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;)V

    .line 1610
    :goto_3
    goto :goto_5

    .line 1611
    :cond_7
    nop

    .line 1612
    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 1613
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/mbridge/msdk/out/Campaign;

    .line 1614
    invoke-virtual {v4, v1}, Lccsancom/mbridge/msdk/out/Campaign;->setVideoLength(I)V

    .line 1615
    goto :goto_4

    .line 1616
    :cond_8
    invoke-direct {p0, p1, v3, v0}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(Ljava/util/List;ILccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;)V

    goto :goto_5

    .line 1618
    :cond_9
    invoke-direct {p0, v0, v4}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;Ljava/lang/String;)V

    .line 1622
    :cond_a
    :goto_5
    const/4 p1, 0x1

    return p1

    .line 1624
    :cond_b
    return v1
.end method

.method public static a(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1709
    const-string v0, "key_word"

    if-eqz p0, :cond_0

    :try_start_0
    const-string v1, "app_id"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "app_key"

    .line 1710
    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1711
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    .line 1712
    const/4 p0, 0x1

    return p0

    .line 1714
    :catch_0
    move-exception p0

    .line 1715
    sget-object v0, Lccsancom/mbridge/msdk/mbnative/c/b;->e:Ljava/lang/String;

    invoke-static {p0}, Lccsancom/mbridge/msdk/mbnative/b/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1716
    :cond_0
    nop

    .line 1717
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/mbnative/c/b;I)I
    .locals 0

    .line 95
    iput p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->v:I

    return p1
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/mbnative/c/b;)Ljava/lang/String;
    .locals 0

    .line 95
    iget-object p0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/mbnative/c/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 95
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->Q:Ljava/lang/String;

    return-object p1
.end method

.method private b(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/out/Campaign;",
            ">;)",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/out/Campaign;",
            ">;"
        }
    .end annotation

    .line 1987
    if-eqz p1, :cond_1

    .line 1988
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1989
    const/4 v1, 0x0

    .line 1990
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1992
    :try_start_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1995
    move-object v1, v2

    goto :goto_1

    .line 1993
    :catchall_0
    move-exception v2

    .line 1994
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1996
    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1997
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/out/Campaign;

    .line 1998
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getType()I

    move-result v3

    invoke-static {v3}, Lccsancom/mbridge/msdk/mbnative/a/c;->a(I)Lccsancom/mbridge/msdk/mbnative/a/b;

    move-result-object v3

    .line 1999
    iget-object v4, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->j:Ljava/lang/String;

    iget-object v5, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->P:Ljava/lang/String;

    invoke-virtual {v3, v4, v2, v5}, Lccsancom/mbridge/msdk/mbnative/a/b;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    .line 2000
    sget-object v3, Lccsancom/mbridge/msdk/mbnative/c/b;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove no videoURL ads:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1990
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2004
    :cond_1
    return-object p1
.end method

.method public static b(Ljava/util/Map;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1722
    const-string v0, "key_word"

    .line 1725
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 1726
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 1727
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1728
    return-object v1

    .line 1731
    :cond_0
    new-instance v0, Lccsanorg/json/JSONArray;

    invoke-direct {v0, p0}, Lccsanorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1732
    invoke-virtual {v0}, Lccsanorg/json/JSONArray;->length()I

    move-result p0

    if-nez p0, :cond_1

    .line 1733
    return-object v1

    .line 1736
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1737
    const/4 v1, 0x0

    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lccsanorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1739
    invoke-virtual {v0, v1}, Lccsanorg/json/JSONArray;->optJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v2

    .line 1740
    if-eqz v2, :cond_2

    .line 1741
    const-string v3, "p"

    invoke-virtual {v2, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1742
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1743
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1737
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move-object v1, p0

    goto :goto_1

    .line 1748
    :catch_0
    move-exception v0

    move-object v1, p0

    goto :goto_2

    .line 1750
    :cond_4
    :goto_1
    goto :goto_3

    .line 1748
    :catch_1
    move-exception v0

    .line 1749
    :goto_2
    sget-object p0, Lccsancom/mbridge/msdk/mbnative/c/b;->e:Ljava/lang/String;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbnative/b/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1751
    :goto_3
    return-object v1
.end method

.method private declared-synchronized b(IJILjava/lang/String;)V
    .locals 10

    monitor-enter p0

    .line 718
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->d:Ljava/util/Map;

    const-string v1, "native_info"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 719
    iget v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->W:I

    iget v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->X:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->t:I

    .line 721
    :cond_0
    const/4 v0, 0x1

    if-nez p4, :cond_4

    .line 722
    invoke-static {p1}, Lccsancom/mbridge/msdk/mbnative/a/c;->a(I)Lccsancom/mbridge/msdk/mbnative/a/b;

    move-result-object v1

    .line 723
    if-eqz v1, :cond_1

    .line 724
    iget-object v2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->j:Ljava/lang/String;

    iget v3, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->t:I

    invoke-virtual {v1, v2, v3}, Lccsancom/mbridge/msdk/mbnative/a/b;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 725
    invoke-direct {p0, v1}, Lccsancom/mbridge/msdk/mbnative/c/b;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(ILjava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(Ljava/util/List;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 726
    monitor-exit p0

    return-void

    .line 729
    :cond_1
    :try_start_1
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->L:Lccsancom/mbridge/msdk/mbnative/c/b$a;

    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->V:Z

    if-nez v2, :cond_2

    .line 730
    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/mbnative/c/b$a;->b(Z)V

    .line 732
    :cond_2
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->V:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->x:Z

    if-nez v1, :cond_3

    .line 733
    const-string v1, "mb load failed"

    invoke-virtual {p0, v1, p4, p5}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 736
    :cond_3
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->Y:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_4

    .line 737
    monitor-exit p0

    return-void

    .line 740
    :cond_4
    :try_start_2
    iget v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->u:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    .line 741
    iput p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->u:I

    goto :goto_0

    .line 742
    :cond_5
    if-eq v1, p1, :cond_6

    .line 743
    const/4 v1, 0x0

    iput v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->v:I

    .line 745
    :cond_6
    :goto_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->i:Lccsanandroid/content/Context;

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/db/d;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/d;

    move-result-object v1

    .line 746
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/db/d;->a()V

    .line 748
    new-instance v1, Lccsancom/mbridge/msdk/mbnative/f/a/a;

    iget-object v2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->i:Lccsanandroid/content/Context;

    invoke-direct {v1, v2}, Lccsancom/mbridge/msdk/mbnative/f/a/a;-><init>(Lccsanandroid/content/Context;)V

    .line 749
    new-instance v2, Lccsancom/mbridge/msdk/foundation/same/net/h/d;

    invoke-direct {v2}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;-><init>()V

    .line 750
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v3

    .line 751
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v4

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/controller/a;->h()Ljava/lang/String;

    move-result-object v4

    .line 753
    iget-object v5, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->d:Ljava/util/Map;

    if-eqz v5, :cond_a

    const-string v6, "app_id"

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->d:Ljava/util/Map;

    const-string v6, "app_key"

    .line 754
    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->d:Ljava/util/Map;

    const-string v6, "key_word"

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->d:Ljava/util/Map;

    const-string v6, "key_word"

    .line 755
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 756
    const/4 v5, 0x0

    .line 757
    iget-object v6, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->d:Ljava/util/Map;

    const-string v7, "app_id"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_7

    .line 758
    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->d:Ljava/util/Map;

    const-string v6, "app_id"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 760
    :cond_7
    iget-object v6, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->d:Ljava/util/Map;

    const-string v7, "app_key"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_8

    .line 761
    iget-object v4, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->d:Ljava/util/Map;

    const-string v6, "app_key"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 763
    :cond_8
    iget-object v6, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->d:Ljava/util/Map;

    const-string v7, "key_word"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_9

    .line 764
    iget-object v5, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->d:Ljava/util/Map;

    const-string v6, "key_word"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 766
    :cond_9
    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 767
    const-string v6, "smart"

    invoke-static {v5}, Lccsancom/mbridge/msdk/foundation/tools/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    :cond_a
    const-string v5, "app_id"

    invoke-virtual {v2, v5, v3}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    const-string v5, "unit_id"

    iget-object v6, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->j:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    iget-object v5, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->k:Ljava/lang/String;

    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 774
    sget-object v5, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    iget-object v6, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->k:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    :cond_b
    const-string v5, "req_type"

    const-string v6, "2"

    invoke-virtual {v2, v5, v6}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    iget-object v5, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->w:Ljava/lang/String;

    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 778
    const-string v5, "category"

    iget-object v6, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->w:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    :cond_c
    const-string v5, "sign"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsancom/mbridge/msdk/foundation/tools/SameMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    iget v3, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->U:I

    if-lez v3, :cond_d

    if-nez p4, :cond_d

    .line 782
    const-string v3, "ad_num"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->U:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 784
    :cond_d
    const-string v3, "ad_num"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->s:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    :goto_1
    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->j:Ljava/lang/String;

    invoke-static {v3}, Lccsancom/mbridge/msdk/foundation/tools/u;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 788
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 789
    const-string v4, "j"

    invoke-virtual {v2, v4, v3}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    :cond_e
    const-string v3, "only_impression"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    const-string v3, "ping_mode"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    iget v3, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->D:I

    if-eqz v3, :cond_f

    .line 795
    const-string v3, "frame_num"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->D:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    :cond_f
    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->n:Ljava/lang/String;

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 799
    const-string v3, "native_info"

    iget-object v4, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->n:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    if-ne p1, v0, :cond_11

    sget-boolean v3, Lccsancom/mbridge/msdk/click/a;->a:Z

    if-nez v3, :cond_11

    .line 802
    const-string v3, "tnum"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->J:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 804
    :cond_10
    if-ne p1, v0, :cond_11

    sget-boolean v3, Lccsancom/mbridge/msdk/click/a;->a:Z

    if-nez v3, :cond_11

    .line 805
    const-string v3, "tnum"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->s:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    :cond_11
    :goto_2
    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->j:Ljava/lang/String;

    const-string v4, "native"

    invoke-static {v3, v4}, Lccsancom/mbridge/msdk/foundation/same/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 810
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 811
    sget-object v4, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->b:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    :cond_12
    sget v3, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_16

    .line 817
    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->d:Ljava/util/Map;

    const-string v4, "native_video_width"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->d:Ljava/util/Map;

    const-string v4, "native_video_width"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_13

    .line 818
    const-string v3, "video_width"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->d:Ljava/util/Map;

    const-string v6, "native_video_width"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    :cond_13
    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->d:Ljava/util/Map;

    const-string v4, "native_video_height"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->d:Ljava/util/Map;

    const-string v4, "native_video_height"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_14

    .line 821
    const-string v3, "video_height"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->d:Ljava/util/Map;

    const-string v6, "native_video_height"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    :cond_14
    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->d:Ljava/util/Map;

    const-string v4, "videoSupport"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->d:Ljava/util/Map;

    const-string v4, "videoSupport"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_15

    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->d:Ljava/util/Map;

    const-string v4, "videoSupport"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 825
    :cond_15
    const-string v3, "video_version"

    const-string v4, "2.0"

    invoke-virtual {v2, v3, v4}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    :cond_16
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v3

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v4

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lccsancom/mbridge/msdk/b/b;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;

    move-result-object v3

    .line 831
    if-nez v3, :cond_17

    .line 832
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/b/b;->b()Lccsancom/mbridge/msdk/b/a;

    .line 835
    :cond_17
    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->d:Ljava/util/Map;

    invoke-static {v3}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 836
    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->i:Lccsanandroid/content/Context;

    iget-object v4, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->j:Ljava/lang/String;

    invoke-static {v3, v4}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v3

    .line 837
    invoke-virtual {v3}, Lccsanorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_18

    .line 838
    sget-object v4, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->c:Ljava/lang/String;

    invoke-static {v3}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Lccsanorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    :cond_18
    invoke-static {}, Lccsancom/mbridge/msdk/mbnative/c/c;->b()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->j:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 843
    invoke-static {}, Lccsancom/mbridge/msdk/mbnative/c/c;->b()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->j:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 844
    invoke-static {}, Lccsancom/mbridge/msdk/mbnative/c/c;->c()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->j:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1a

    .line 845
    invoke-static {}, Lccsancom/mbridge/msdk/mbnative/c/c;->c()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->j:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/mbridge/msdk/foundation/entity/j;

    .line 846
    if-eqz v3, :cond_1a

    .line 847
    if-ne p1, v0, :cond_19

    .line 848
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/j;->b()I

    move-result v3

    iput v3, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->v:I

    goto :goto_3

    .line 849
    :cond_19
    const/4 v4, 0x2

    if-ne p1, v4, :cond_1a

    .line 850
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/j;->a()I

    move-result v3

    iput v3, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->v:I

    .line 855
    :cond_1a
    :goto_3
    const-string v3, "offset"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->v:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    const-string v3, "ad_type"

    const-string v4, "42"

    invoke-virtual {v2, v3, v4}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    const-string v3, "ad_source_id"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->q:Ljava/lang/String;

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1b

    .line 859
    sget-object p1, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a:Ljava/lang/String;

    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->q:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    :cond_1b
    new-instance p1, Lccsancom/mbridge/msdk/mbnative/c/b$a;

    invoke-direct {p1, p0}, Lccsancom/mbridge/msdk/mbnative/c/b$a;-><init>(Lccsancom/mbridge/msdk/mbnative/c/b;)V

    .line 862
    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->d:Ljava/util/Map;

    invoke-static {v3}, Lccsancom/mbridge/msdk/mbnative/c/b;->b(Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    .line 863
    invoke-virtual {p1, v3}, Lccsancom/mbridge/msdk/mbnative/c/b$a;->a(Ljava/util/List;)V

    .line 864
    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->j:Ljava/lang/String;

    .line 5071
    iput-object v3, p1, Lccsancom/mbridge/msdk/foundation/same/net/f;->d:Ljava/lang/String;

    .line 865
    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->k:Ljava/lang/String;

    .line 5075
    iput-object v3, p1, Lccsancom/mbridge/msdk/foundation/same/net/f;->e:Ljava/lang/String;

    .line 866
    const/16 v3, 0x2a

    .line 5079
    iput v3, p1, Lccsancom/mbridge/msdk/foundation/same/net/f;->f:I

    .line 868
    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/mbnative/c/b$a;->b(Z)V

    .line 871
    new-instance v9, Lccsancom/mbridge/msdk/mbnative/c/b$c;

    const/4 v5, 0x1

    move-object v3, v9

    move-object v4, p0

    move-object v6, p1

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v3 .. v8}, Lccsancom/mbridge/msdk/mbnative/c/b$c;-><init>(Lccsancom/mbridge/msdk/mbnative/c/b;ILccsancom/mbridge/msdk/foundation/same/e/c;ILjava/lang/String;)V

    .line 872
    invoke-virtual {p1, v9}, Lccsancom/mbridge/msdk/mbnative/c/b$a;->a(Ljava/lang/Runnable;)V

    .line 873
    invoke-virtual {p1, p4}, Lccsancom/mbridge/msdk/mbnative/c/b$a;->g(I)V

    .line 874
    invoke-virtual {p1, p5}, Lccsancom/mbridge/msdk/mbnative/c/b$a;->a(Ljava/lang/String;)V

    .line 876
    if-nez p4, :cond_1e

    .line 877
    invoke-static {p5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 878
    const-string v3, "token"

    invoke-virtual {v2, v3, p5}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    :cond_1c
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c()Lccsancom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->b()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-static {p5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 881
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c()Lccsancom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v3

    invoke-virtual {v3, p5}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, v0, p5, v2, p1}, Lccsancom/mbridge/msdk/mbnative/f/a/a;->b(ILjava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/h/d;Lccsancom/mbridge/msdk/foundation/same/net/e;)V

    goto :goto_4

    .line 883
    :cond_1d
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c()Lccsancom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v3

    invoke-virtual {v3, p5}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, v0, p5, v2, p1}, Lccsancom/mbridge/msdk/mbnative/f/a/a;->a(ILjava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/h/d;Lccsancom/mbridge/msdk/foundation/same/net/e;)V

    .line 888
    :cond_1e
    :goto_4
    if-ne p4, v0, :cond_1f

    .line 889
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c()Lccsancom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object p4

    iget-object p4, p4, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, p4, v2, p1}, Lccsancom/mbridge/msdk/mbnative/f/a/a;->a(ILjava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/h/d;Lccsancom/mbridge/msdk/foundation/same/net/e;)V

    .line 892
    :cond_1f
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->o:Lccsancom/mbridge/msdk/mbnative/c/b$e;

    invoke-virtual {p1, v9, p2, p3}, Lccsancom/mbridge/msdk/mbnative/c/b$e;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 897
    goto :goto_5

    .line 717
    :catchall_0
    move-exception p1

    goto :goto_6

    .line 894
    :catch_0
    move-exception p1

    .line 895
    :try_start_3
    sget-object p2, Lccsancom/mbridge/msdk/mbnative/c/b;->e:Ljava/lang/String;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbnative/b/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 898
    :goto_5
    monitor-exit p0

    return-void

    .line 717
    :goto_6
    monitor-exit p0

    throw p1
.end method

.method private b(ILjava/lang/String;)V
    .locals 7

    .line 627
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->l:Ljava/util/Queue;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 628
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->l:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 629
    sget v0, Lccsancom/mbridge/msdk/MBridgeConstans;->REQUEST_TIME_OUT:I

    int-to-long v0, v0

    iput-wide v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->S:J

    .line 630
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->m:Ljava/util/Queue;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 631
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->m:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->S:J

    .line 633
    :cond_0
    iget-wide v3, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->S:J

    move-object v1, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(IJILjava/lang/String;)V

    .line 634
    goto :goto_0

    .line 635
    :cond_1
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->x:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->g:Lccsancom/mbridge/msdk/mbnative/d/a;

    if-eqz p1, :cond_2

    .line 636
    const/4 p2, 0x1

    iput-boolean p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->x:Z

    .line 637
    const-string p2, "no ad source"

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/mbnative/d/a;->onAdLoadError(Ljava/lang/String;)V

    .line 640
    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/mbnative/c/b;Ljava/util/List;)V
    .locals 12

    .line 95
    const-string v0, "com.mbridge.msdk.videocommon.download.c"

    .line 7771
    if-eqz p1, :cond_7

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-lez v1, :cond_7

    .line 7773
    :try_start_1
    const-string v1, "com.mbridge.msdk.nativex.view.MBMediaView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 7774
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 7775
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 7776
    const-string v1, "com.mbridge.msdk.videocommon.listener.a"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 7777
    const-string v2, "getInstance"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 7778
    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 7779
    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 7780
    const-string v6, "createUnitCache"

    const/4 v7, 0x5

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Lccsanandroid/content/Context;

    aput-object v9, v8, v3

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v4

    const-class v9, Ljava/util/List;

    const/4 v10, 0x2

    aput-object v9, v8, v10

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x3

    aput-object v9, v8, v11

    const/4 v9, 0x4

    aput-object v1, v8, v9

    invoke-virtual {v0, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 7781
    new-array v6, v7, [Ljava/lang/Object;

    iget-object v7, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->i:Lccsanandroid/content/Context;

    aput-object v7, v6, v3

    iget-object v7, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->j:Ljava/lang/String;

    aput-object v7, v6, v4

    aput-object p1, v6, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    aput-object v5, v6, v9

    invoke-virtual {v1, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7782
    const-string v1, "load"

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 7783
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->j:Ljava/lang/String;

    aput-object v5, v1, v3

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7786
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 7787
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7788
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/same/c/b;

    move-result-object v1

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lccsancom/mbridge/msdk/mbnative/c/b$2;

    invoke-direct {v5, p0}, Lccsancom/mbridge/msdk/mbnative/c/b$2;-><init>(Lccsancom/mbridge/msdk/mbnative/c/b;)V

    invoke-virtual {v1, v2, v5}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/c/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7802
    :cond_1
    :try_start_2
    const-string v1, "com.mbridge.msdk.videocommon.download.g"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 7803
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v1

    .line 7804
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 7805
    nop

    .line 7806
    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "md5filename"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7807
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/g;->a()Lccsancom/mbridge/msdk/videocommon/download/g;

    move-result-object v2

    invoke-virtual {v2, v1}, Lccsancom/mbridge/msdk/videocommon/download/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 7808
    const/4 v2, 0x0

    goto :goto_1

    .line 7807
    :cond_2
    const/4 v2, 0x1

    .line 7810
    :goto_1
    new-instance v5, Lccsancom/mbridge/msdk/mbnative/c/b$g;

    iget-object v6, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->j:Ljava/lang/String;

    invoke-direct {v5, v6, v0, v2}, Lccsancom/mbridge/msdk/mbnative/c/b$g;-><init>(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Z)V

    .line 7811
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/g;->a()Lccsancom/mbridge/msdk/videocommon/download/g;

    move-result-object v0

    invoke-virtual {v0, v1, v5}, Lccsancom/mbridge/msdk/videocommon/download/g;->b(Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/download/g$a;)V

    .line 7812
    goto :goto_3

    .line 7813
    :cond_3
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/h;->a()Lccsancom/mbridge/msdk/videocommon/download/h;

    move-result-object v2

    invoke-virtual {v2, v1}, Lccsancom/mbridge/msdk/videocommon/download/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 7814
    const/4 v2, 0x0

    goto :goto_2

    .line 7813
    :cond_4
    const/4 v2, 0x1

    .line 7816
    :goto_2
    new-instance v5, Lccsancom/mbridge/msdk/mbnative/c/b$d;

    iget-object v6, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->j:Ljava/lang/String;

    invoke-direct {v5, v6, v0, v2}, Lccsancom/mbridge/msdk/mbnative/c/b$d;-><init>(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Z)V

    .line 7817
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/g;->a()Lccsancom/mbridge/msdk/videocommon/download/g;

    move-result-object v0

    invoke-virtual {v0, v1, v5}, Lccsancom/mbridge/msdk/videocommon/download/g;->b(Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/download/g$a;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7822
    :cond_5
    :goto_3
    goto :goto_4

    .line 7820
    :catch_0
    move-exception v0

    .line 7823
    :goto_4
    goto/16 :goto_0

    .line 7827
    :cond_6
    goto :goto_5

    .line 7825
    :catchall_0
    move-exception p0

    .line 7826
    :try_start_3
    sget-object p0, Lccsancom/mbridge/msdk/mbnative/c/b;->e:Ljava/lang/String;

    const-string p1, "please import the videocommon and nativex aar"

    invoke-static {p0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    .line 7829
    :catchall_1
    move-exception p0

    .line 7830
    sget-boolean p1, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p1, :cond_8

    .line 7831
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 7833
    :cond_7
    :goto_5
    nop

    .line 95
    :cond_8
    :goto_6
    return-void
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/mbnative/c/b;Z)Z
    .locals 0

    .line 95
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->V:Z

    return p1
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/mbnative/c/b;)I
    .locals 0

    .line 95
    iget p0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->t:I

    return p0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .line 95
    sget-object v0, Lccsancom/mbridge/msdk/mbnative/c/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/mbnative/c/b;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/mbnative/c/b;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private c(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/out/Campaign;",
            ">;)",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/out/Campaign;",
            ">;"
        }
    .end annotation

    .line 2008
    nop

    .line 2009
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 2010
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/out/Campaign;

    .line 2011
    instance-of v2, v1, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v2, :cond_1

    .line 2012
    move-object v2, v1

    check-cast v2, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 2013
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2014
    if-nez v0, :cond_0

    .line 2015
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2017
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2020
    :cond_1
    goto :goto_0

    .line 2022
    :cond_2
    return-object v0
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/mbnative/c/b;Z)Z
    .locals 0

    .line 95
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->x:Z

    return p1
.end method

.method static synthetic d(Lccsancom/mbridge/msdk/mbnative/c/b;)Ljava/lang/String;
    .locals 0

    .line 95
    iget-object p0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->P:Ljava/lang/String;

    return-object p0
.end method

.method private d(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/out/Campaign;",
            ">;)",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/out/Campaign;",
            ">;"
        }
    .end annotation

    .line 2121
    if-nez p1, :cond_0

    .line 2122
    const/4 p1, 0x0

    return-object p1

    .line 2124
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2125
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2126
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/out/Campaign;

    .line 2127
    instance-of v3, v2, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v3, :cond_3

    .line 2128
    move-object v3, v2

    check-cast v3, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 2129
    iget-object v4, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->P:Ljava/lang/String;

    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getBidToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2130
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2131
    :cond_1
    iget-object v4, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->P:Ljava/lang/String;

    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getBidToken()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->P:Ljava/lang/String;

    invoke-static {v3, v4}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2132
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2134
    :cond_2
    :goto_1
    goto :goto_2

    .line 2135
    :cond_3
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2137
    :goto_2
    goto :goto_0

    .line 2138
    :cond_4
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->P:Ljava/lang/String;

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2139
    return-object v1

    .line 2141
    :cond_5
    return-object v0
.end method

.method static synthetic d()Z
    .locals 1

    .line 95
    sget-boolean v0, Lccsancom/mbridge/msdk/mbnative/c/b;->A:Z

    return v0
.end method

.method private e()Lccsancom/mbridge/msdk/b/d;
    .locals 3

    .line 1979
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->j:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2, v1}, Lccsancom/mbridge/msdk/b/b;->e(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/b/d;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->R:Lccsancom/mbridge/msdk/b/d;

    .line 1980
    if-nez v0, :cond_0

    .line 1981
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->j:Ljava/lang/String;

    invoke-static {v0}, Lccsancom/mbridge/msdk/b/d;->d(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/d;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->R:Lccsancom/mbridge/msdk/b/d;

    .line 1983
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->R:Lccsancom/mbridge/msdk/b/d;

    return-object v0
.end method

.method static synthetic e(Lccsancom/mbridge/msdk/mbnative/c/b;)Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->x:Z

    return p0
.end method

.method static synthetic f(Lccsancom/mbridge/msdk/mbnative/c/b;)Lccsancom/mbridge/msdk/click/a;
    .locals 0

    .line 95
    iget-object p0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->r:Lccsancom/mbridge/msdk/click/a;

    return-object p0
.end method

.method private f()V
    .locals 1

    .line 2107
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->O:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 2108
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2109
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->O:Ljava/util/Timer;

    .line 2111
    :cond_0
    return-void
.end method

.method static synthetic g(Lccsancom/mbridge/msdk/mbnative/c/b;)Lccsancom/mbridge/msdk/mbnative/d/a;
    .locals 0

    .line 95
    iget-object p0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->g:Lccsancom/mbridge/msdk/mbnative/d/a;

    return-object p0
.end method

.method static synthetic h(Lccsancom/mbridge/msdk/mbnative/c/b;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 95
    iget-object p0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->I:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic i(Lccsancom/mbridge/msdk/mbnative/c/b;)Lccsanandroid/content/Context;
    .locals 0

    .line 95
    iget-object p0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->i:Lccsanandroid/content/Context;

    return-object p0
.end method

.method static synthetic j(Lccsancom/mbridge/msdk/mbnative/c/b;)Lccsancom/mbridge/msdk/mbnative/c/b$e;
    .locals 0

    .line 95
    iget-object p0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->o:Lccsancom/mbridge/msdk/mbnative/c/b$e;

    return-object p0
.end method

.method static synthetic k(Lccsancom/mbridge/msdk/mbnative/c/b;)I
    .locals 0

    .line 95
    iget p0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->T:I

    return p0
.end method

.method static synthetic l(Lccsancom/mbridge/msdk/mbnative/c/b;)I
    .locals 0

    .line 95
    iget p0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->W:I

    return p0
.end method

.method static synthetic m(Lccsancom/mbridge/msdk/mbnative/c/b;)I
    .locals 0

    .line 95
    iget p0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->X:I

    return p0
.end method

.method static synthetic n(Lccsancom/mbridge/msdk/mbnative/c/b;)I
    .locals 0

    .line 95
    iget p0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->u:I

    return p0
.end method

.method static synthetic o(Lccsancom/mbridge/msdk/mbnative/c/b;)I
    .locals 0

    .line 95
    iget p0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->v:I

    return p0
.end method

.method static synthetic p(Lccsancom/mbridge/msdk/mbnative/c/b;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lccsancom/mbridge/msdk/mbnative/c/b;->f()V

    return-void
.end method

.method static synthetic q(Lccsancom/mbridge/msdk/mbnative/c/b;)Lccsancom/mbridge/msdk/b/d;
    .locals 0

    .line 95
    invoke-direct {p0}, Lccsancom/mbridge/msdk/mbnative/c/b;->e()Lccsancom/mbridge/msdk/b/d;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1185
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->F:Lccsancom/mbridge/msdk/foundation/same/e/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1186
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/same/e/b;->a()V

    .line 1187
    iput-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->F:Lccsancom/mbridge/msdk/foundation/same/e/b;

    .line 1190
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->o:Lccsancom/mbridge/msdk/mbnative/c/b$e;

    if-eqz v0, :cond_1

    .line 1191
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/mbnative/c/b$e;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1194
    :cond_1
    iput-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->h:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    .line 1196
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->r:Lccsancom/mbridge/msdk/click/a;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/click/a;->a()V

    .line 1198
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->i:Lccsanandroid/content/Context;

    if-eqz v0, :cond_2

    .line 1199
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/same/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/same/c/b;->b()V

    .line 1202
    :cond_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->G:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 1203
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/mbnative/c/a;

    .line 1204
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/mbnative/c/a;->a()V

    .line 1205
    goto :goto_0

    .line 1206
    :cond_3
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1207
    iput-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->G:Ljava/util/List;

    .line 1209
    :cond_4
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->H:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 1210
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/mbnative/c/a$a;

    .line 1211
    nop

    .line 1212
    goto :goto_1

    .line 1213
    :cond_5
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1214
    iput-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->H:Ljava/util/List;

    .line 1216
    :cond_6
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->I:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 1217
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->I:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1218
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1219
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/foundation/same/e/a;

    .line 1220
    if-eqz v0, :cond_7

    .line 1221
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/same/e/a;->d()V

    .line 1222
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->o:Lccsancom/mbridge/msdk/mbnative/c/b$e;

    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/mbnative/c/b$e;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1225
    :cond_7
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->I:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1228
    :cond_8
    goto :goto_2

    .line 1227
    :catch_0
    move-exception v0

    .line 1229
    :goto_2
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 9

    .line 374
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->x:Z

    .line 375
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->y:Z

    .line 376
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->z:Z

    .line 377
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->V:Z

    .line 378
    iput-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->P:Ljava/lang/String;

    .line 379
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->g:Lccsancom/mbridge/msdk/mbnative/d/a;

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v2, 0x1

    xor-int/2addr p2, v2

    invoke-virtual {v1, p2}, Lccsancom/mbridge/msdk/mbnative/d/a;->a(Z)V

    .line 380
    const/4 p2, 0x0

    iput-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->L:Lccsancom/mbridge/msdk/mbnative/c/b$a;

    .line 381
    sget-object v1, Lccsancom/mbridge/msdk/mbnative/c/b;->c:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 382
    sget-object v1, Lccsancom/mbridge/msdk/mbnative/c/b;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 384
    :cond_0
    nop

    .line 386
    invoke-static {}, Lccsancom/mbridge/msdk/mbnative/c/c;->b()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 387
    invoke-static {}, Lccsancom/mbridge/msdk/mbnative/c/c;->b()Ljava/util/Map;

    move-result-object v1

    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->j:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 388
    invoke-static {}, Lccsancom/mbridge/msdk/mbnative/c/c;->b()Ljava/util/Map;

    move-result-object v1

    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->j:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    .line 391
    :cond_1
    const/4 v1, 0x0

    :goto_0
    nop

    .line 2395
    if-eqz v1, :cond_2

    if-ne p1, v2, :cond_2

    .line 2396
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2397
    goto/16 :goto_a

    .line 2400
    :cond_2
    nop

    .line 2401
    nop

    .line 2402
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->d:Ljava/util/Map;

    const-string v3, "app_id"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->d:Ljava/util/Map;

    const-string v4, "app_key"

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->d:Ljava/util/Map;

    .line 2403
    const-string v5, "key_word"

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2404
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->d:Ljava/util/Map;

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 2405
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->d:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    .line 2407
    :cond_3
    move-object v1, p2

    :goto_1
    nop

    .line 3370
    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->f:Lccsancom/mbridge/msdk/b/c;

    iget-object v4, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->i:Lccsanandroid/content/Context;

    iget-object v5, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->j:Ljava/lang/String;

    invoke-virtual {v3, v4, p2, v1, v5}, Lccsancom/mbridge/msdk/b/c;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2408
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v1

    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->j:Ljava/lang/String;

    invoke-virtual {v1, p2, v3}, Lccsancom/mbridge/msdk/b/b;->e(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/b/d;

    move-result-object p2

    iput-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->R:Lccsancom/mbridge/msdk/b/d;

    .line 2409
    nop

    .line 2410
    if-nez p2, :cond_4

    .line 2411
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->j:Ljava/lang/String;

    invoke-static {p2}, Lccsancom/mbridge/msdk/b/d;->d(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/d;

    move-result-object p2

    iput-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->R:Lccsancom/mbridge/msdk/b/d;

    .line 2414
    :cond_4
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->R:Lccsancom/mbridge/msdk/b/d;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/b/d;->w()I

    move-result p2

    iget v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->t:I

    mul-int p2, p2, v1

    .line 2415
    invoke-static {}, Lccsancom/mbridge/msdk/mbnative/c/c;->e()Ljava/util/Map;

    move-result-object v1

    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->j:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2416
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->R:Lccsancom/mbridge/msdk/b/d;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/b/d;->s()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->a:Ljava/util/List;

    .line 2417
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->R:Lccsancom/mbridge/msdk/b/d;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/b/d;->t()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->b:Ljava/util/List;

    .line 2418
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->R:Lccsancom/mbridge/msdk/b/d;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/b/d;->q()I

    move-result p2

    iput p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->U:I

    .line 2419
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->R:Lccsancom/mbridge/msdk/b/d;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/b/d;->r()I

    move-result p2

    iput p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->T:I

    .line 2420
    iget p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->s:I

    iput p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->t:I

    .line 2422
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->a:Ljava/util/List;

    if-eqz p2, :cond_16

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_5

    goto/16 :goto_9

    .line 2430
    :cond_5
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->d:Ljava/util/Map;

    const-string v1, "native_info"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    const/4 v3, 0x2

    if-eqz p2, :cond_a

    .line 2431
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->n:Ljava/lang/String;

    if-nez p2, :cond_a

    .line 2432
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->d:Ljava/util/Map;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->n:Ljava/lang/String;

    .line 2433
    nop

    .line 3676
    if-nez p2, :cond_6

    .line 3677
    goto :goto_4

    .line 3679
    :cond_6
    :try_start_0
    new-instance p2, Lccsanorg/json/JSONArray;

    iget-object v4, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->n:Ljava/lang/String;

    invoke-direct {p2, v4}, Lccsanorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 3680
    invoke-virtual {p2}, Lccsanorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_9

    .line 3681
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {p2}, Lccsanorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_9

    .line 3682
    invoke-virtual {p2, v4}, Lccsanorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsanorg/json/JSONObject;

    .line 3683
    const-string v6, "id"

    invoke-virtual {v5, v6, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3684
    const-string v7, "ad_num"

    if-ne v3, v6, :cond_7

    .line 3685
    :try_start_1
    invoke-virtual {v5, v7}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->W:I

    .line 3686
    iget v6, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->U:I

    if-lez v6, :cond_8

    .line 3687
    invoke-virtual {v5, v7}, Lccsanorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 3688
    iget v6, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->U:I

    invoke-virtual {v5, v7, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    goto :goto_3

    .line 3690
    :cond_7
    const/4 v8, 0x3

    if-ne v8, v6, :cond_8

    .line 3691
    invoke-virtual {v5, v7}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->X:I

    .line 3692
    iget v6, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->U:I

    if-lez v6, :cond_8

    .line 3693
    invoke-virtual {v5, v7}, Lccsanorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 3694
    iget v6, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->U:I

    invoke-virtual {v5, v7, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 3681
    :cond_8
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 3699
    :cond_9
    iget v4, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->W:I

    iget v5, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->X:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->J:I

    .line 3700
    invoke-virtual {p2}, Lccsanorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->n:Ljava/lang/String;
    :try_end_1
    .catch Lccsanorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3703
    goto :goto_4

    .line 3701
    :catch_0
    move-exception p2

    .line 3702
    sget-object v4, Lccsancom/mbridge/msdk/mbnative/c/b;->e:Ljava/lang/String;

    invoke-static {p2}, Lccsancom/mbridge/msdk/mbnative/b/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2437
    :cond_a
    :goto_4
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->a:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->a:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v2, :cond_c

    :cond_b
    if-nez p1, :cond_c

    .line 2439
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->j:Ljava/lang/String;

    iget v4, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->t:I

    iget-object v5, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->P:Ljava/lang/String;

    invoke-virtual {p0, p2, v4, v5}, Lccsancom/mbridge/msdk/mbnative/c/b;->b(Ljava/lang/String;ILjava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 2440
    invoke-direct {p0, p2}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 2441
    goto/16 :goto_a

    .line 2444
    :cond_c
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->Y:Z

    .line 2445
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->a:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    if-nez p1, :cond_f

    iget-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->a:Ljava/util/List;

    .line 2446
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p2, v2, :cond_f

    .line 2447
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->a:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 2448
    invoke-static {p2}, Lccsancom/mbridge/msdk/mbnative/a/c;->a(I)Lccsancom/mbridge/msdk/mbnative/a/b;

    move-result-object v4

    .line 2450
    if-ne p2, v3, :cond_d

    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->d:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2451
    iget v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->J:I

    iput v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->t:I

    goto :goto_5

    .line 2453
    :cond_d
    iget v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->s:I

    iput v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->t:I

    .line 2455
    :goto_5
    if-eqz v4, :cond_e

    .line 2456
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->j:Ljava/lang/String;

    iget v3, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->t:I

    invoke-virtual {v4, v1, v3}, Lccsancom/mbridge/msdk/mbnative/a/b;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 2457
    invoke-direct {p0, v1}, Lccsancom/mbridge/msdk/mbnative/c/b;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(ILjava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p2}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 2458
    goto/16 :goto_a

    .line 2461
    :cond_e
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->Y:Z

    .line 2464
    :try_start_2
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->b:Ljava/util/List;

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->a:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v5, p2

    .line 2465
    const/4 v4, 0x1

    iget-object v8, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->P:Ljava/lang/String;

    move-object v3, p0

    move v7, p1

    invoke-direct/range {v3 .. v8}, Lccsancom/mbridge/msdk/mbnative/c/b;->b(IJILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2468
    goto :goto_6

    .line 2466
    :catch_1
    move-exception p2

    .line 2471
    :cond_f
    :goto_6
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->o:Lccsancom/mbridge/msdk/mbnative/c/b$e;

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->R:Lccsancom/mbridge/msdk/b/d;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/d;->n()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-virtual {p2, v2, v0, v1}, Lccsancom/mbridge/msdk/mbnative/c/b$e;->sendEmptyMessageDelayed(IJ)Z

    .line 2472
    nop

    .line 4681
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->a:Ljava/util/List;

    if-eqz p2, :cond_12

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_12

    .line 4682
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->l:Ljava/util/Queue;

    if-eqz p2, :cond_10

    invoke-interface {p2}, Ljava/util/Queue;->size()I

    move-result p2

    if-lez p2, :cond_10

    .line 4683
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->l:Ljava/util/Queue;

    invoke-interface {p2}, Ljava/util/Queue;->clear()V

    .line 4685
    :cond_10
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 4686
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->l:Ljava/util/Queue;

    if-eqz v1, :cond_11

    .line 4687
    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 4689
    :cond_11
    goto :goto_7

    .line 4691
    :cond_12
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->b:Ljava/util/List;

    if-eqz p2, :cond_15

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_15

    .line 4692
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->m:Ljava/util/Queue;

    if-eqz p2, :cond_13

    invoke-interface {p2}, Ljava/util/Queue;->size()I

    move-result p2

    if-lez p2, :cond_13

    .line 4693
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->m:Ljava/util/Queue;

    invoke-interface {p2}, Ljava/util/Queue;->clear()V

    .line 4695
    :cond_13
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->b:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 4696
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->m:Ljava/util/Queue;

    if-eqz v1, :cond_14

    .line 4697
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 4699
    :cond_14
    goto :goto_8

    .line 2474
    :cond_15
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->P:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/mbnative/c/b;->b(ILjava/lang/String;)V

    goto :goto_a

    .line 2423
    :cond_16
    :goto_9
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->g:Lccsancom/mbridge/msdk/mbnative/d/a;

    .line 2424
    if-eqz p1, :cond_17

    .line 2425
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->x:Z

    .line 2426
    const-string p2, "don\'t have sorceList"

    invoke-interface {p1, p2}, Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;->onAdLoadError(Ljava/lang/String;)V

    .line 2428
    :cond_17
    nop

    .line 392
    :goto_a
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/out/Campaign;Lccsanandroid/view/View;)V
    .locals 3

    .line 969
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->h:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz v0, :cond_0

    .line 970
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->r:Lccsancom/mbridge/msdk/click/a;

    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/click/a;->a(Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 972
    :cond_0
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/out/Campaign;->getType()I

    move-result v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbnative/a/c;->a(I)Lccsancom/mbridge/msdk/mbnative/a/b;

    move-result-object v0

    .line 973
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->j:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->P:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lccsancom/mbridge/msdk/mbnative/a/b;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    .line 974
    check-cast p1, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 976
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->j:Ljava/lang/String;

    const-string v1, "native"

    invoke-static {v0, p1, v1}, Lccsancom/mbridge/msdk/foundation/same/a/d;->b(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V

    .line 978
    if-eqz p1, :cond_1

    .line 980
    new-instance v0, Lccsancom/mbridge/msdk/mbnative/c/b$5;

    invoke-direct {v0, p0, p1}, Lccsancom/mbridge/msdk/mbnative/c/b$5;-><init>(Lccsancom/mbridge/msdk/mbnative/c/b;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 991
    :try_start_1
    const-string v1, "com.mbridge.msdk.nativex.view.MBMediaView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 992
    invoke-direct {p0, p2, v0, v1}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(Lccsanandroid/view/View;Lccsanandroid/view/View$OnClickListener;Ljava/lang/Class;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 995
    goto :goto_0

    .line 993
    :catchall_0
    move-exception v1

    .line 994
    const/4 v1, 0x0

    :try_start_2
    invoke-direct {p0, p2, v0, v1}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(Lccsanandroid/view/View;Lccsanandroid/view/View$OnClickListener;Ljava/lang/Class;)V

    .line 997
    :goto_0
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isReport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 998
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 999
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1000
    invoke-direct {p0, p1, p2, v0}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/view/View;Ljava/util/List;)V

    .line 1001
    sget-object p2, Lccsancom/mbridge/msdk/mbnative/c/b;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendImpression"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1007
    :cond_1
    goto :goto_1

    .line 1005
    :catch_0
    move-exception p1

    .line 1006
    sget-object p1, Lccsancom/mbridge/msdk/mbnative/c/b;->e:Ljava/lang/String;

    const-string p2, "registerview exception!"

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    :goto_1
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/out/Campaign;Lccsanandroid/view/View;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/out/Campaign;",
            "Lccsanandroid/view/View;",
            "Ljava/util/List<",
            "Lccsanandroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 902
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->h:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz v0, :cond_0

    .line 903
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->r:Lccsancom/mbridge/msdk/click/a;

    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/click/a;->a(Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 905
    :cond_0
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/out/Campaign;->getType()I

    move-result v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbnative/a/c;->a(I)Lccsancom/mbridge/msdk/mbnative/a/b;

    move-result-object v0

    .line 906
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->j:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->P:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lccsancom/mbridge/msdk/mbnative/a/b;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    .line 907
    check-cast p1, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 909
    const/4 v0, 0x0

    .line 911
    :try_start_1
    const-string v1, "com.mbridge.msdk.nativex.view.MBMediaView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 913
    goto :goto_0

    .line 912
    :catchall_0
    move-exception v1

    .line 915
    :goto_0
    :try_start_2
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->j:Ljava/lang/String;

    const-string v2, "native"

    invoke-static {v1, p1, v2}, Lccsancom/mbridge/msdk/foundation/same/a/d;->b(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V

    .line 916
    if-eqz p1, :cond_5

    .line 917
    if-eqz p2, :cond_2

    .line 918
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 919
    return-void

    .line 921
    :cond_1
    new-instance v1, Lccsancom/mbridge/msdk/mbnative/c/b$1;

    invoke-direct {v1, p0, p1}, Lccsancom/mbridge/msdk/mbnative/c/b$1;-><init>(Lccsancom/mbridge/msdk/mbnative/c/b;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    invoke-virtual {p2, v1}, Lccsanandroid/view/View;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 930
    :cond_2
    if-eqz p3, :cond_4

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 931
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/view/View;

    .line 932
    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 933
    goto :goto_2

    .line 935
    :cond_3
    new-instance v3, Lccsancom/mbridge/msdk/mbnative/c/b$4;

    invoke-direct {v3, p0, p1}, Lccsancom/mbridge/msdk/mbnative/c/b$4;-><init>(Lccsancom/mbridge/msdk/mbnative/c/b;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    invoke-virtual {v2, v3}, Lccsanandroid/view/View;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 944
    goto :goto_1

    .line 946
    :cond_4
    :goto_2
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isReport()Z

    move-result v0

    if-nez v0, :cond_5

    .line 947
    invoke-direct {p0, p1, p2, p3}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/view/View;Ljava/util/List;)V

    .line 948
    sget-object p2, Lccsancom/mbridge/msdk/mbnative/c/b;->e:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendImpression"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 955
    :cond_5
    goto :goto_3

    .line 953
    :catch_0
    move-exception p1

    .line 954
    sget-object p1, Lccsancom/mbridge/msdk/mbnative/c/b;->e:Ljava/lang/String;

    const-string p2, "registerview exception!"

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    :goto_3
    return-void
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 705
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->l:Ljava/util/Queue;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->l:Ljava/util/Queue;

    if-nez v0, :cond_2

    .line 706
    :cond_1
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->g:Lccsancom/mbridge/msdk/mbnative/d/a;

    if-eqz p2, :cond_3

    iget-boolean p3, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->x:Z

    if-nez p3, :cond_3

    .line 707
    const/4 p3, 0x1

    iput-boolean p3, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->x:Z

    .line 708
    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/mbnative/d/a;->onAdLoadError(Ljava/lang/String;)V

    goto :goto_0

    .line 711
    :cond_2
    invoke-direct {p0, p2, p3}, Lccsancom/mbridge/msdk/mbnative/c/b;->b(ILjava/lang/String;)V

    .line 713
    :cond_3
    :goto_0
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 2117
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->Q:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;ILjava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/out/Campaign;",
            ">;"
        }
    .end annotation

    .line 1499
    nop

    .line 1500
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->a:Ljava/util/List;

    const/4 p3, 0x0

    if-eqz p2, :cond_7

    .line 1501
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->a:Ljava/util/List;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1502
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    const-string v4, "native_info"

    const/4 v5, 0x1

    if-ge v1, v2, :cond_3

    .line 1503
    nop

    .line 1504
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lccsancom/mbridge/msdk/mbnative/a/c;->a(I)Lccsancom/mbridge/msdk/mbnative/a/b;

    move-result-object v2

    .line 1505
    if-eqz v2, :cond_2

    .line 1506
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-eq p3, v5, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, v3, :cond_1

    :cond_0
    iget-object p3, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->d:Ljava/util/Map;

    .line 1507
    invoke-interface {p3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1508
    iget p3, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->J:I

    goto :goto_1

    .line 1510
    :cond_1
    iget p3, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->s:I

    .line 1512
    :goto_1
    invoke-virtual {v2, p1, p3}, Lccsancom/mbridge/msdk/mbnative/a/b;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    .line 1513
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2, p3}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(ILjava/util/List;)Ljava/util/List;

    move-result-object p3

    .line 1514
    if-eqz p3, :cond_2

    .line 1515
    goto :goto_2

    .line 1502
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1519
    :cond_3
    :goto_2
    if-nez p3, :cond_7

    .line 1520
    nop

    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 1521
    nop

    .line 1522
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p3}, Lccsancom/mbridge/msdk/mbnative/a/c;->a(I)Lccsancom/mbridge/msdk/mbnative/a/b;

    move-result-object p3

    .line 1523
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v5, :cond_4

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_5

    :cond_4
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->d:Ljava/util/Map;

    .line 1524
    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1525
    iget v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->J:I

    goto :goto_4

    .line 1527
    :cond_5
    iget v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b;->s:I

    .line 1529
    :goto_4
    invoke-virtual {p3, p1, v1}, Lccsancom/mbridge/msdk/mbnative/a/b;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    .line 1530
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, p3}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(ILjava/util/List;)Ljava/util/List;

    move-result-object p3

    .line 1531
    if-eqz p3, :cond_6

    .line 1532
    goto :goto_5

    .line 1520
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1537
    :cond_7
    :goto_5
    invoke-direct {p0, p3}, Lccsancom/mbridge/msdk/mbnative/c/b;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lccsancom/mbridge/msdk/out/Campaign;Lccsanandroid/view/View;)V
    .locals 1

    .line 1134
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lccsancom/mbridge/msdk/mbnative/c/b;->b(Lccsancom/mbridge/msdk/out/Campaign;Lccsanandroid/view/View;Ljava/util/List;)V

    .line 1135
    return-void
.end method

.method public final b(Lccsancom/mbridge/msdk/out/Campaign;Lccsanandroid/view/View;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/out/Campaign;",
            "Lccsanandroid/view/View;",
            "Ljava/util/List<",
            "Lccsanandroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1138
    if-eqz p1, :cond_2

    .line 1139
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/out/Campaign;->getType()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 1142
    :pswitch_0
    const/4 p1, 0x0

    .line 1144
    :try_start_0
    const-string v0, "com.mbridge.msdk.nativex.view.MBMediaView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1146
    goto :goto_0

    .line 1145
    :catchall_0
    move-exception v0

    .line 1147
    :goto_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1148
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lccsanandroid/view/View;

    .line 1149
    invoke-direct {p0, p3, p1}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(Lccsanandroid/view/View;Ljava/lang/Class;)V

    .line 1150
    goto :goto_1

    :cond_0
    goto :goto_2

    .line 1152
    :cond_1
    if-eqz p2, :cond_2

    .line 1153
    invoke-direct {p0, p2, p1}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(Lccsanandroid/view/View;Ljava/lang/Class;)V

    .line 1159
    :cond_2
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
