.class public final Lccsancom/mbridge/msdk/videocommon/d/c;
.super Ljava/lang/Object;
.source "RewardUnitSetting.java"


# static fields
.field private static H:Lccsancom/mbridge/msdk/foundation/db/f;

.field public static a:Ljava/lang/String;


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private I:I

.field private J:I

.field private K:I

.field private L:Ljava/lang/String;

.field private M:I

.field private N:Ljava/lang/String;

.field private O:I

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/videocommon/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private e:J

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:D

.field private t:I

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 169
    const/4 v0, 0x0

    sput-object v0, Lccsancom/mbridge/msdk/videocommon/d/c;->H:Lccsancom/mbridge/msdk/foundation/db/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->f:I

    .line 33
    const/4 v1, 0x0

    iput v1, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->g:I

    .line 34
    iput v1, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->h:I

    .line 35
    const/4 v2, 0x1

    iput v2, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->i:I

    .line 36
    iput v2, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->j:I

    .line 37
    iput v2, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->k:I

    .line 38
    iput v2, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->l:I

    .line 39
    const/4 v3, 0x5

    iput v3, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->m:I

    .line 40
    iput v2, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->n:I

    .line 41
    const/4 v3, 0x3

    iput v3, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->o:I

    .line 42
    const/16 v4, 0x50

    iput v4, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->p:I

    .line 43
    const/16 v4, 0x64

    iput v4, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->q:I

    .line 44
    iput v1, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->r:I

    .line 45
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iput-wide v4, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->s:D

    .line 46
    iput v0, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->t:I

    .line 48
    iput v3, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->v:I

    .line 49
    iput v2, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->w:I

    .line 50
    const/16 v3, 0xa

    iput v3, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->x:I

    .line 51
    const/16 v3, 0x3c

    iput v3, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->y:I

    .line 85
    iput v1, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->z:I

    .line 147
    const/16 v3, 0x46

    iput v3, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->A:I

    .line 149
    iput v1, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->B:I

    .line 150
    iput v0, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->C:I

    .line 151
    iput v0, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->D:I

    .line 152
    iput v0, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->E:I

    .line 154
    const/16 v0, 0x14

    iput v0, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->G:I

    .line 175
    iput v1, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->J:I

    .line 176
    iput v2, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->K:I

    .line 177
    const-string v0, ""

    iput-object v0, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->L:Ljava/lang/String;

    .line 178
    iput v2, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->M:I

    .line 179
    iput-object v0, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->N:Ljava/lang/String;

    .line 180
    iput v2, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->O:I

    .line 181
    const-string v2, "Virtual Item"

    iput-object v2, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->P:Ljava/lang/String;

    .line 182
    iput-object v0, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->Q:Ljava/lang/String;

    .line 183
    iput v1, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->R:I

    return-void
.end method

.method public static a(Lccsanorg/json/JSONObject;)Lccsancom/mbridge/msdk/videocommon/d/c;
    .locals 10

    .line 684
    const-string v0, ""

    .line 686
    const/4 v1, 0x0

    if-eqz p0, :cond_6

    .line 687
    :try_start_0
    new-instance v2, Lccsancom/mbridge/msdk/videocommon/d/c;

    invoke-direct {v2}, Lccsancom/mbridge/msdk/videocommon/d/c;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 688
    :try_start_1
    const-string v1, "adSourceList"

    .line 689
    invoke-virtual {p0, v1}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v1

    .line 688
    invoke-static {v1}, Lccsancom/mbridge/msdk/videocommon/b/b;->a(Lccsanorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    .line 690
    nop

    .line 11382
    iput-object v1, v2, Lccsancom/mbridge/msdk/videocommon/d/c;->d:Ljava/util/List;

    .line 691
    const-string v1, "callbackType"

    invoke-virtual {p0, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 12358
    iput v1, v2, Lccsancom/mbridge/msdk/videocommon/d/c;->i:I

    .line 692
    const-string v1, "aqn"

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 693
    if-gtz v1, :cond_0

    .line 694
    const/4 v1, 0x1

    .line 696
    :cond_0
    nop

    .line 13318
    iput v1, v2, Lccsancom/mbridge/msdk/videocommon/d/c;->j:I

    .line 697
    const-string v1, "acn"

    invoke-virtual {p0, v1, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 698
    if-gez v1, :cond_1

    .line 699
    const/4 v1, 0x1

    .line 701
    :cond_1
    nop

    .line 13326
    iput v1, v2, Lccsancom/mbridge/msdk/videocommon/d/c;->k:I

    .line 702
    const-string v1, "vcn"

    const/4 v4, 0x5

    invoke-virtual {p0, v1, v4}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 13334
    iput v1, v2, Lccsancom/mbridge/msdk/videocommon/d/c;->l:I

    .line 703
    const-string v1, "offset"

    invoke-virtual {p0, v1, v4}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 13342
    iput v1, v2, Lccsancom/mbridge/msdk/videocommon/d/c;->m:I

    .line 704
    const-string v1, "dlnet"

    const/4 v4, 0x2

    invoke-virtual {p0, v1, v4}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 13350
    iput v1, v2, Lccsancom/mbridge/msdk/videocommon/d/c;->n:I

    .line 705
    const-string v1, "endscreen_type"

    invoke-virtual {p0, v1, v4}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 14277
    iput v1, v2, Lccsancom/mbridge/msdk/videocommon/d/c;->I:I

    .line 706
    const-string v1, "tv_start"

    const/4 v5, 0x3

    invoke-virtual {p0, v1, v5}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 14285
    iput v1, v2, Lccsancom/mbridge/msdk/videocommon/d/c;->o:I

    .line 707
    const-string v1, "tv_end"

    const/16 v6, 0x50

    invoke-virtual {p0, v1, v6}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 14293
    iput v1, v2, Lccsancom/mbridge/msdk/videocommon/d/c;->p:I

    .line 708
    const-string v1, "ready_rate"

    const/16 v6, 0x64

    invoke-virtual {p0, v1, v6}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 14302
    iput v1, v2, Lccsancom/mbridge/msdk/videocommon/d/c;->q:I

    .line 709
    const-string v1, "current_time"

    invoke-virtual {p0, v1}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 14366
    iput-wide v6, v2, Lccsancom/mbridge/msdk/videocommon/d/c;->e:J

    .line 710
    const-string v1, "orientation"

    const/4 v6, 0x0

    invoke-virtual {p0, v1, v6}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 15082
    iput v1, v2, Lccsancom/mbridge/msdk/videocommon/d/c;->z:I

    .line 711
    const-string v1, "daily_play_cap"

    invoke-virtual {p0, v1, v6}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 712
    nop

    .line 15095
    iput v1, v2, Lccsancom/mbridge/msdk/videocommon/d/c;->B:I

    .line 713
    const-string v1, "video_skip_time"

    const/4 v7, -0x1

    invoke-virtual {p0, v1, v7}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 15103
    iput v1, v2, Lccsancom/mbridge/msdk/videocommon/d/c;->C:I

    .line 714
    const-string v1, "video_skip_result"

    invoke-virtual {p0, v1, v4}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 15111
    iput v1, v2, Lccsancom/mbridge/msdk/videocommon/d/c;->D:I

    .line 715
    const-string v1, "video_interactive_type"

    invoke-virtual {p0, v1, v7}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 15119
    iput v1, v2, Lccsancom/mbridge/msdk/videocommon/d/c;->E:I

    .line 716
    const-string v1, "close_button_delay"

    invoke-virtual {p0, v1, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 15269
    iput v1, v2, Lccsancom/mbridge/msdk/videocommon/d/c;->F:I

    .line 718
    const-string v1, "playclosebtn_tm"

    invoke-virtual {p0, v1, v7}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 16127
    iput v1, v2, Lccsancom/mbridge/msdk/videocommon/d/c;->f:I

    .line 719
    const-string v1, "play_ctdown"

    invoke-virtual {p0, v1, v6}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 16135
    iput v1, v2, Lccsancom/mbridge/msdk/videocommon/d/c;->g:I

    .line 720
    const-string v1, "close_alert"

    invoke-virtual {p0, v1, v6}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 16143
    iput v1, v2, Lccsancom/mbridge/msdk/videocommon/d/c;->h:I

    .line 722
    const-string v1, "rdrct"

    const/16 v8, 0x14

    invoke-virtual {p0, v1, v8}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 16261
    iput v1, v2, Lccsancom/mbridge/msdk/videocommon/d/c;->G:I

    .line 723
    const-string v1, "rfpv"

    invoke-virtual {p0, v1, v7}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 16429
    iput v1, v2, Lccsancom/mbridge/msdk/videocommon/d/c;->t:I

    .line 724
    const-string v1, "vdcmp"

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v1, v7, v8}, Lccsanorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    .line 17390
    iput-wide v7, v2, Lccsancom/mbridge/msdk/videocommon/d/c;->s:D

    .line 726
    const-string v1, "load_global_timeout"

    const/16 v7, 0x46

    invoke-virtual {p0, v1, v7}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 17773
    iput v1, v2, Lccsancom/mbridge/msdk/videocommon/d/c;->A:I

    .line 727
    const-string v1, "atl_type"

    invoke-virtual {p0, v1}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v1

    .line 728
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 730
    if-eqz v1, :cond_2

    .line 731
    const/4 v8, 0x0

    :goto_0
    :try_start_2
    invoke-virtual {v1}, Lccsanorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 732
    invoke-virtual {v1, v8}, Lccsanorg/json/JSONArray;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 735
    :cond_2
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 738
    :cond_3
    nop

    .line 18074
    iput-object v7, v2, Lccsancom/mbridge/msdk/videocommon/d/c;->u:Ljava/util/ArrayList;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 741
    goto :goto_1

    .line 739
    :catch_0
    move-exception v1

    .line 740
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 742
    :goto_1
    const-string v1, "atl_dyt"

    invoke-virtual {p0, v1, v5}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 18445
    iput v1, v2, Lccsancom/mbridge/msdk/videocommon/d/c;->v:I

    .line 744
    const-string v1, "tmorl"

    invoke-virtual {p0, v1, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 745
    if-gt v1, v4, :cond_4

    if-gtz v1, :cond_5

    :cond_4
    const/4 v1, 0x1

    .line 746
    :cond_5
    nop

    .line 19417
    iput v1, v2, Lccsancom/mbridge/msdk/videocommon/d/c;->w:I

    .line 748
    const-string v1, "placementid"

    invoke-virtual {p0, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 19437
    iput-object v1, v2, Lccsancom/mbridge/msdk/videocommon/d/c;->c:Ljava/lang/String;

    .line 750
    const-string v1, "ltafemty"

    const/16 v4, 0xa

    invoke-virtual {p0, v1, v4}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 20058
    iput v1, v2, Lccsancom/mbridge/msdk/videocommon/d/c;->x:I

    .line 751
    const-string v1, "ltorwc"

    const/16 v4, 0x3c

    invoke-virtual {p0, v1, v4}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 20066
    iput v1, v2, Lccsancom/mbridge/msdk/videocommon/d/c;->y:I

    .line 752
    const-string v1, "ab_id"

    invoke-virtual {p0, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 20190
    iput-object v1, v2, Lccsancom/mbridge/msdk/videocommon/d/c;->Q:Ljava/lang/String;

    .line 753
    const-string v1, "amount_max"

    invoke-virtual {p0, v1, v6}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 20198
    iput v1, v2, Lccsancom/mbridge/msdk/videocommon/d/c;->J:I

    .line 754
    const-string v1, "callback_rule"

    invoke-virtual {p0, v1, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 20206
    iput v1, v2, Lccsancom/mbridge/msdk/videocommon/d/c;->K:I

    .line 755
    const-string v1, "virtual_currency"

    invoke-virtual {p0, v1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 20214
    iput-object v1, v2, Lccsancom/mbridge/msdk/videocommon/d/c;->L:Ljava/lang/String;

    .line 756
    const-string v1, "amount"

    invoke-virtual {p0, v1, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v2, v1}, Lccsancom/mbridge/msdk/videocommon/d/c;->w(I)V

    .line 757
    const-string v1, "icon"

    invoke-virtual {p0, v1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20234
    iput-object v0, v2, Lccsancom/mbridge/msdk/videocommon/d/c;->N:Ljava/lang/String;

    .line 758
    const-string v0, "currency_id"

    invoke-virtual {p0, v0, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 20242
    iput v0, v2, Lccsancom/mbridge/msdk/videocommon/d/c;->O:I

    .line 759
    const-string v0, "name"

    const-string v1, "Virtual Item"

    invoke-virtual {p0, v0, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lccsancom/mbridge/msdk/videocommon/d/c;->d(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v1, v2

    goto :goto_3

    .line 762
    :catch_1
    move-exception p0

    move-object v1, v2

    goto :goto_2

    :catch_2
    move-exception p0

    .line 763
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 765
    return-object v1

    .line 761
    :cond_6
    :goto_3
    return-object v1
.end method

.method public static c(Ljava/lang/String;)Lccsancom/mbridge/msdk/videocommon/d/c;
    .locals 10

    .line 497
    const-string v0, ""

    .line 498
    sget-object v1, Lccsancom/mbridge/msdk/videocommon/d/c;->H:Lccsancom/mbridge/msdk/foundation/db/f;

    if-nez v1, :cond_0

    .line 499
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v1

    sput-object v1, Lccsancom/mbridge/msdk/videocommon/d/c;->H:Lccsancom/mbridge/msdk/foundation/db/f;

    .line 501
    :cond_0
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_9

    .line 503
    :try_start_0
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 504
    const-string p0, "unitSetting"

    invoke-virtual {v1, p0}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object p0

    .line 505
    if-eqz p0, :cond_8

    .line 506
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lccsanorg/json/JSONArray;->optJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object p0

    .line 507
    if-eqz p0, :cond_8

    .line 508
    const-string v4, "unitId"

    .line 509
    invoke-virtual {p0, v4}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 510
    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 511
    new-instance v5, Lccsancom/mbridge/msdk/videocommon/d/c;

    invoke-direct {v5}, Lccsancom/mbridge/msdk/videocommon/d/c;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 512
    :try_start_1
    const-string v2, "adSourceList"

    .line 514
    invoke-virtual {p0, v2}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v2

    .line 513
    invoke-static {v2}, Lccsancom/mbridge/msdk/videocommon/b/b;->a(Lccsanorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    .line 516
    nop

    .line 1374
    iput-object v4, v5, Lccsancom/mbridge/msdk/videocommon/d/c;->b:Ljava/lang/String;

    .line 517
    nop

    .line 1382
    iput-object v2, v5, Lccsancom/mbridge/msdk/videocommon/d/c;->d:Ljava/util/List;

    .line 518
    const-string v2, "callbackType"

    .line 519
    invoke-virtual {p0, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 518
    nop

    .line 2358
    iput v2, v5, Lccsancom/mbridge/msdk/videocommon/d/c;->i:I

    .line 520
    const-string v2, "aqn"

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 522
    if-gtz v2, :cond_1

    .line 523
    const/4 v2, 0x1

    .line 525
    :cond_1
    nop

    .line 3318
    iput v2, v5, Lccsancom/mbridge/msdk/videocommon/d/c;->j:I

    .line 526
    const-string v2, "acn"

    invoke-virtual {p0, v2, v4}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 528
    if-gez v2, :cond_2

    .line 529
    const/4 v2, 0x1

    .line 531
    :cond_2
    nop

    .line 3326
    iput v2, v5, Lccsancom/mbridge/msdk/videocommon/d/c;->k:I

    .line 532
    const-string v2, "vcn"

    const/4 v6, 0x5

    invoke-virtual {p0, v2, v6}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 3334
    iput v2, v5, Lccsancom/mbridge/msdk/videocommon/d/c;->l:I

    .line 534
    const-string v2, "offset"

    invoke-virtual {p0, v2, v6}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 3342
    iput v2, v5, Lccsancom/mbridge/msdk/videocommon/d/c;->m:I

    .line 536
    const-string v2, "dlnet"

    invoke-virtual {p0, v2, v4}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 3350
    iput v2, v5, Lccsancom/mbridge/msdk/videocommon/d/c;->n:I

    .line 538
    const-string v2, "endscreen_type"

    const/4 v6, 0x2

    invoke-virtual {p0, v2, v6}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 4277
    iput v2, v5, Lccsancom/mbridge/msdk/videocommon/d/c;->I:I

    .line 539
    const-string v2, "tv_start"

    const/4 v7, 0x3

    invoke-virtual {p0, v2, v7}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 4285
    iput v2, v5, Lccsancom/mbridge/msdk/videocommon/d/c;->o:I

    .line 540
    const-string v2, "tv_end"

    const/16 v8, 0x50

    invoke-virtual {p0, v2, v8}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 4293
    iput v2, v5, Lccsancom/mbridge/msdk/videocommon/d/c;->p:I

    .line 541
    const-string v2, "ready_rate"

    const/16 v8, 0x64

    invoke-virtual {p0, v2, v8}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 4302
    iput v2, v5, Lccsancom/mbridge/msdk/videocommon/d/c;->q:I

    .line 542
    const-string v2, "cd_rate"

    invoke-virtual {p0, v2, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 4310
    iput v2, v5, Lccsancom/mbridge/msdk/videocommon/d/c;->r:I

    .line 543
    const-string v2, "current_time"

    .line 544
    invoke-virtual {v1, v2}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 543
    nop

    .line 4366
    iput-wide v1, v5, Lccsancom/mbridge/msdk/videocommon/d/c;->e:J

    .line 546
    const-string v1, "orientation"

    invoke-virtual {p0, v1, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 5082
    iput v1, v5, Lccsancom/mbridge/msdk/videocommon/d/c;->z:I

    .line 547
    const-string v1, "daily_play_cap"

    invoke-virtual {p0, v1, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 548
    nop

    .line 5095
    iput v1, v5, Lccsancom/mbridge/msdk/videocommon/d/c;->B:I

    .line 549
    const-string v1, "video_skip_time"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 5103
    iput v1, v5, Lccsancom/mbridge/msdk/videocommon/d/c;->C:I

    .line 550
    const-string v1, "video_skip_result"

    invoke-virtual {p0, v1, v6}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 5111
    iput v1, v5, Lccsancom/mbridge/msdk/videocommon/d/c;->D:I

    .line 551
    const-string v1, "video_interactive_type"

    invoke-virtual {p0, v1, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 5119
    iput v1, v5, Lccsancom/mbridge/msdk/videocommon/d/c;->E:I

    .line 552
    const-string v1, "close_button_delay"

    invoke-virtual {p0, v1, v4}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 5269
    iput v1, v5, Lccsancom/mbridge/msdk/videocommon/d/c;->F:I

    .line 554
    const-string v1, "playclosebtn_tm"

    invoke-virtual {p0, v1, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 6127
    iput v1, v5, Lccsancom/mbridge/msdk/videocommon/d/c;->f:I

    .line 555
    const-string v1, "play_ctdown"

    invoke-virtual {p0, v1, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 6135
    iput v1, v5, Lccsancom/mbridge/msdk/videocommon/d/c;->g:I

    .line 556
    const-string v1, "close_alert"

    invoke-virtual {p0, v1, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 6143
    iput v1, v5, Lccsancom/mbridge/msdk/videocommon/d/c;->h:I

    .line 558
    const-string v1, "rdrct"

    const/16 v8, 0x14

    invoke-virtual {p0, v1, v8}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 6261
    iput v1, v5, Lccsancom/mbridge/msdk/videocommon/d/c;->G:I

    .line 559
    const-string v1, "load_global_timeout"

    const/16 v8, 0x46

    invoke-virtual {p0, v1, v8}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 6773
    iput v1, v5, Lccsancom/mbridge/msdk/videocommon/d/c;->A:I

    .line 561
    const-string v1, "rfpv"

    invoke-virtual {p0, v1, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 7429
    iput v1, v5, Lccsancom/mbridge/msdk/videocommon/d/c;->t:I

    .line 562
    const-string v1, "vdcmp"

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v1, v8, v9}, Lccsanorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    .line 8390
    iput-wide v1, v5, Lccsancom/mbridge/msdk/videocommon/d/c;->s:D

    .line 563
    const-string v1, "atzu"

    invoke-virtual {p0, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8398
    sput-object v1, Lccsancom/mbridge/msdk/videocommon/d/c;->a:Ljava/lang/String;

    .line 565
    const-string v1, "atl_type"

    invoke-virtual {p0, v1}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v1

    .line 566
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 568
    if-eqz v1, :cond_3

    .line 569
    const/4 v8, 0x0

    :goto_0
    :try_start_2
    invoke-virtual {v1}, Lccsanorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_4

    .line 570
    invoke-virtual {v1, v8}, Lccsanorg/json/JSONArray;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 573
    :cond_3
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    :cond_4
    nop

    .line 9074
    iput-object v2, v5, Lccsancom/mbridge/msdk/videocommon/d/c;->u:Ljava/util/ArrayList;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 580
    goto :goto_1

    .line 578
    :catch_0
    move-exception v1

    .line 579
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 582
    :goto_1
    const-string v1, "atl_dyt"

    invoke-virtual {p0, v1, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 583
    if-lez v1, :cond_5

    move v7, v1

    .line 9445
    :cond_5
    iput v7, v5, Lccsancom/mbridge/msdk/videocommon/d/c;->v:I

    .line 585
    const-string v1, "tmorl"

    invoke-virtual {p0, v1, v4}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 586
    if-gt v1, v6, :cond_6

    if-gtz v1, :cond_7

    :cond_6
    const/4 v1, 0x1

    .line 587
    :cond_7
    nop

    .line 10417
    iput v1, v5, Lccsancom/mbridge/msdk/videocommon/d/c;->w:I

    .line 589
    const-string v1, "placementid"

    invoke-virtual {p0, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10437
    iput-object v1, v5, Lccsancom/mbridge/msdk/videocommon/d/c;->c:Ljava/lang/String;

    .line 591
    const-string v1, "ltafemty"

    const/16 v2, 0xa

    invoke-virtual {p0, v1, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 11058
    iput v1, v5, Lccsancom/mbridge/msdk/videocommon/d/c;->x:I

    .line 592
    const-string v1, "ltorwc"

    const/16 v2, 0x3c

    invoke-virtual {p0, v1, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 11066
    iput v1, v5, Lccsancom/mbridge/msdk/videocommon/d/c;->y:I

    .line 593
    const-string v1, "ab_id"

    invoke-virtual {p0, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 11190
    iput-object v1, v5, Lccsancom/mbridge/msdk/videocommon/d/c;->Q:Ljava/lang/String;

    .line 594
    const-string v1, "amount_max"

    invoke-virtual {p0, v1, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 11198
    iput v1, v5, Lccsancom/mbridge/msdk/videocommon/d/c;->J:I

    .line 595
    const-string v1, "callback_rule"

    invoke-virtual {p0, v1, v4}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 11206
    iput v1, v5, Lccsancom/mbridge/msdk/videocommon/d/c;->K:I

    .line 596
    const-string v1, "virtual_currency"

    invoke-virtual {p0, v1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 11214
    iput-object v1, v5, Lccsancom/mbridge/msdk/videocommon/d/c;->L:Ljava/lang/String;

    .line 597
    const-string v1, "amount"

    invoke-virtual {p0, v1, v4}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v5, v1}, Lccsancom/mbridge/msdk/videocommon/d/c;->w(I)V

    .line 598
    const-string v1, "icon"

    invoke-virtual {p0, v1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11234
    iput-object v0, v5, Lccsancom/mbridge/msdk/videocommon/d/c;->N:Ljava/lang/String;

    .line 599
    const-string v0, "currency_id"

    invoke-virtual {p0, v0, v4}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 11242
    iput v0, v5, Lccsancom/mbridge/msdk/videocommon/d/c;->O:I

    .line 600
    const-string v0, "name"

    const-string v1, "Virtual Item"

    invoke-virtual {p0, v0, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v5, p0}, Lccsancom/mbridge/msdk/videocommon/d/c;->d(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v2, v5

    goto :goto_2

    .line 605
    :catch_1
    move-exception p0

    move-object v2, v5

    goto :goto_3

    .line 604
    :cond_8
    :goto_2
    return-object v2

    .line 605
    :catch_2
    move-exception p0

    .line 606
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 609
    :cond_9
    return-object v2
.end method

.method private d(Ljava/lang/String;)V
    .locals 1

    .line 250
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->L:Ljava/lang/String;

    iput-object p1, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->P:Ljava/lang/String;

    goto :goto_0

    .line 253
    :cond_0
    iput-object p1, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->P:Ljava/lang/String;

    .line 255
    :goto_0
    return-void
.end method

.method private w(I)V
    .locals 0

    .line 222
    if-gtz p1, :cond_0

    .line 223
    const/4 p1, 0x1

    iput p1, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->M:I

    goto :goto_0

    .line 225
    :cond_0
    iput p1, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->M:I

    .line 227
    :goto_0
    return-void
.end method


# virtual methods
.method public final A()I
    .locals 1

    .line 441
    iget v0, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->v:I

    return v0
.end method

.method public final B()Ljava/util/Queue;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 468
    nop

    .line 472
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->d:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 473
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 474
    const/4 v0, 0x0

    :goto_0
    :try_start_1
    iget-object v2, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 475
    iget-object v2, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/videocommon/b/b;

    .line 476
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/videocommon/b/b;->b()I

    move-result v2

    .line 477
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 474
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_1

    .line 481
    :catch_0
    move-exception v0

    goto :goto_2

    .line 483
    :cond_1
    :goto_1
    goto :goto_3

    .line 481
    :catch_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    .line 482
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .line 485
    :goto_3
    return-object v0
.end method

.method public final C()Lccsanorg/json/JSONObject;
    .locals 7

    .line 613
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 615
    :try_start_0
    const-string v1, "unitId"

    iget-object v2, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 616
    const-string v1, "callbackType"

    iget v2, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->i:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 617
    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->d:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 618
    new-instance v1, Lccsanorg/json/JSONArray;

    invoke-direct {v1}, Lccsanorg/json/JSONArray;-><init>()V

    .line 619
    iget-object v2, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/mbridge/msdk/videocommon/b/b;

    .line 620
    new-instance v4, Lccsanorg/json/JSONObject;

    invoke-direct {v4}, Lccsanorg/json/JSONObject;-><init>()V

    .line 621
    const-string v5, "id"

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/videocommon/b/b;->a()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 622
    const-string v5, "timeout"

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/videocommon/b/b;->b()I

    move-result v3

    invoke-virtual {v4, v5, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 623
    invoke-virtual {v1, v4}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;

    .line 624
    goto :goto_0

    .line 625
    :cond_0
    const-string v2, "adSourceList"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 627
    :cond_1
    const-string v1, "aqn"

    iget v2, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->j:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 628
    const-string v1, "acn"

    iget v2, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->k:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 629
    const-string v1, "vcn"

    iget v2, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->l:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 630
    const-string v1, "offset"

    iget v2, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->m:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 631
    const-string v1, "dlnet"

    iget v2, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->n:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 632
    const-string v1, "tv_start"

    iget v2, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->o:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 633
    const-string v1, "tv_end"

    iget v2, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->p:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 634
    const-string v1, "ready_rate"

    iget v2, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->q:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 635
    const-string v1, "endscreen_type"

    iget v2, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->I:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 636
    const-string v1, "daily_play_cap"

    iget v2, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->B:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 637
    const-string v1, "video_skip_time"

    iget v2, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->C:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 638
    const-string v1, "video_skip_result"

    iget v2, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->D:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 639
    const-string v1, "video_interactive_type"

    iget v2, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->E:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 640
    const-string v1, "orientation"

    iget v2, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->z:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 641
    const-string v1, "close_button_delay"

    iget v2, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->F:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 643
    const-string v1, "playclosebtn_tm"

    iget v2, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->f:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 644
    const-string v1, "play_ctdown"

    iget v2, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->g:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 645
    const-string v1, "close_alert"

    iget v2, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->h:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 647
    const-string v1, "rfpv"

    iget v2, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->t:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 648
    const-string v1, "vdcmp"

    iget-wide v2, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->s:D

    invoke-virtual {v0, v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;D)Lccsanorg/json/JSONObject;

    .line 650
    new-instance v1, Lccsanorg/json/JSONArray;

    invoke-direct {v1}, Lccsanorg/json/JSONArray;-><init>()V

    .line 651
    iget-object v2, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->u:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 652
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 653
    iget-object v2, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->u:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 654
    invoke-virtual {v1, v3}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;

    .line 655
    goto :goto_1

    .line 657
    :cond_2
    const-string v2, "atl_type"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 660
    :cond_3
    const-string v1, "atl_dyt"

    iget v2, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->v:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 662
    const-string v1, "tmorl"

    iget v2, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->w:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 664
    const-string v1, "placementid"

    iget-object v2, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 666
    const-string v1, "ltafemty"

    iget v2, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->x:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 667
    const-string v1, "ltorwc"

    iget v2, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->y:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 669
    const-string v1, "amount_max"

    iget v2, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->J:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 670
    const-string v1, "callback_rule"

    iget v2, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->K:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 671
    const-string v1, "virtual_currency"

    iget-object v2, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->L:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 672
    const-string v1, "amount"

    iget v2, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->M:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 673
    const-string v1, "icon"

    iget-object v2, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->N:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 674
    const-string v1, "currency_id"

    iget v2, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->O:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 675
    const-string v1, "name"

    iget-object v2, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->P:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 676
    const-string v1, "isDefault"

    iget v2, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->R:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    goto :goto_2

    .line 677
    :catch_0
    move-exception v1

    .line 678
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 680
    :goto_2
    return-object v0
.end method

.method public final D()I
    .locals 1

    .line 769
    iget v0, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->A:I

    return v0
.end method

.method public final a()I
    .locals 1

    .line 54
    iget v0, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->x:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    .line 82
    iput p1, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->z:I

    .line 83
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->b:Ljava/lang/String;

    .line 375
    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->u:Ljava/util/ArrayList;

    .line 75
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/videocommon/b/b;",
            ">;)V"
        }
    .end annotation

    .line 382
    iput-object p1, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->d:Ljava/util/List;

    .line 383
    return-void
.end method

.method public final b()I
    .locals 1

    .line 62
    iget v0, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->y:I

    return v0
.end method

.method public final b(I)V
    .locals 0

    .line 95
    iput p1, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->B:I

    .line 96
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->c:Ljava/lang/String;

    .line 438
    return-void
.end method

.method public final c()I
    .locals 1

    .line 78
    iget v0, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->z:I

    return v0
.end method

.method public final c(I)V
    .locals 0

    .line 103
    iput p1, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->C:I

    .line 104
    return-void
.end method

.method public final d()I
    .locals 1

    .line 91
    iget v0, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->B:I

    return v0
.end method

.method public final d(I)V
    .locals 0

    .line 111
    iput p1, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->D:I

    .line 112
    return-void
.end method

.method public final e()I
    .locals 1

    .line 99
    iget v0, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->C:I

    return v0
.end method

.method public final e(I)V
    .locals 0

    .line 119
    iput p1, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->E:I

    .line 120
    return-void
.end method

.method public final f()I
    .locals 1

    .line 107
    iget v0, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->D:I

    return v0
.end method

.method public final f(I)V
    .locals 0

    .line 269
    iput p1, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->F:I

    .line 270
    return-void
.end method

.method public final g()I
    .locals 1

    .line 115
    iget v0, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->E:I

    return v0
.end method

.method public final g(I)V
    .locals 0

    .line 277
    iput p1, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->I:I

    .line 278
    return-void
.end method

.method public final h()I
    .locals 1

    .line 123
    iget v0, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->f:I

    return v0
.end method

.method public final h(I)V
    .locals 0

    .line 285
    iput p1, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->o:I

    .line 286
    return-void
.end method

.method public final i()I
    .locals 1

    .line 139
    iget v0, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->h:I

    return v0
.end method

.method public final i(I)V
    .locals 0

    .line 293
    iput p1, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->p:I

    .line 294
    return-void
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->Q:Ljava/lang/String;

    return-object v0
.end method

.method public final j(I)V
    .locals 0

    .line 302
    iput p1, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->q:I

    .line 303
    return-void
.end method

.method public final k()I
    .locals 1

    .line 218
    iget v0, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->M:I

    return v0
.end method

.method public final k(I)V
    .locals 0

    .line 310
    iput p1, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->r:I

    .line 311
    return-void
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .line 246
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->P:Ljava/lang/String;

    return-object v0
.end method

.method public final l(I)V
    .locals 0

    .line 318
    iput p1, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->j:I

    .line 319
    return-void
.end method

.method public final m()I
    .locals 1

    .line 257
    iget v0, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->G:I

    return v0
.end method

.method public final m(I)V
    .locals 0

    .line 326
    iput p1, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->k:I

    .line 327
    return-void
.end method

.method public final n()I
    .locals 1

    .line 265
    iget v0, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->F:I

    return v0
.end method

.method public final n(I)V
    .locals 0

    .line 334
    iput p1, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->l:I

    .line 335
    return-void
.end method

.method public final o()I
    .locals 1

    .line 273
    iget v0, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->I:I

    return v0
.end method

.method public final o(I)V
    .locals 0

    .line 342
    iput p1, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->m:I

    .line 343
    return-void
.end method

.method public final p()I
    .locals 1

    .line 297
    iget v0, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->q:I

    return v0
.end method

.method public final p(I)V
    .locals 0

    .line 350
    iput p1, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->n:I

    .line 351
    return-void
.end method

.method public final q()I
    .locals 1

    .line 306
    iget v0, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->r:I

    return v0
.end method

.method public final q(I)V
    .locals 0

    .line 358
    iput p1, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->i:I

    .line 359
    return-void
.end method

.method public final r()I
    .locals 1

    .line 314
    iget v0, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->j:I

    return v0
.end method

.method public final r(I)V
    .locals 0

    .line 417
    iput p1, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->w:I

    .line 418
    return-void
.end method

.method public final s()I
    .locals 1

    .line 322
    iget v0, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->k:I

    return v0
.end method

.method public final s(I)Z
    .locals 1

    .line 421
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->u:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 422
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->u:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 425
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final t()I
    .locals 1

    .line 338
    iget v0, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->m:I

    return v0
.end method

.method public final t(I)V
    .locals 0

    .line 445
    iput p1, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->v:I

    .line 446
    return-void
.end method

.method public final u()I
    .locals 1

    .line 346
    iget v0, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->n:I

    return v0
.end method

.method public final u(I)V
    .locals 0

    .line 493
    iput p1, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->R:I

    .line 494
    return-void
.end method

.method public final v()J
    .locals 2

    .line 362
    iget-wide v0, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->e:J

    return-wide v0
.end method

.method public final v(I)V
    .locals 0

    .line 773
    iput p1, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->A:I

    .line 774
    return-void
.end method

.method public final w()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/videocommon/b/b;",
            ">;"
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->d:Ljava/util/List;

    return-object v0
.end method

.method public final x()D
    .locals 2

    .line 386
    iget-wide v0, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->s:D

    return-wide v0
.end method

.method public final y()I
    .locals 1

    .line 413
    iget v0, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->w:I

    return v0
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    .line 433
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/d/c;->c:Ljava/lang/String;

    return-object v0
.end method
