.class public final Lccsancom/mbridge/msdk/b/a$a;
.super Ljava/lang/Object;
.source "Setting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 853
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 860
    iget-object v0, p0, Lccsancom/mbridge/msdk/b/a$a;->a:Ljava/util/List;

    return-object v0
.end method

.method public final a(Lccsanorg/json/JSONObject;)V
    .locals 1

    .line 893
    :try_start_0
    const-string v0, "x"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v0

    .line 894
    if-eqz v0, :cond_0

    .line 895
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/h;->a(Lccsanorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/b/a$a;->a:Ljava/util/List;

    .line 898
    :cond_0
    const-string v0, "y"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v0

    .line 899
    if-eqz v0, :cond_1

    .line 900
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/h;->a(Lccsanorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/b/a$a;->b:Ljava/util/List;

    .line 903
    :cond_1
    const-string v0, "width"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v0

    .line 904
    if-eqz v0, :cond_2

    .line 905
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/h;->a(Lccsanorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/b/a$a;->c:Ljava/util/List;

    .line 908
    :cond_2
    const-string v0, "height"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object p1

    .line 909
    if-eqz p1, :cond_3

    .line 910
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/h;->a(Lccsanorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/b/a$a;->d:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 916
    :cond_3
    goto :goto_0

    .line 912
    :catch_0
    move-exception p1

    .line 913
    sget-boolean v0, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 914
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 917
    :cond_4
    :goto_0
    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 868
    iget-object v0, p0, Lccsancom/mbridge/msdk/b/a$a;->b:Ljava/util/List;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 876
    iget-object v0, p0, Lccsancom/mbridge/msdk/b/a$a;->c:Ljava/util/List;

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 884
    iget-object v0, p0, Lccsancom/mbridge/msdk/b/a$a;->d:Ljava/util/List;

    return-object v0
.end method
