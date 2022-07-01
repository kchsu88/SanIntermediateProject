.class Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent$2;
.super Ljava/lang/Object;
.source "GlobalComponent.java"

# interfaces
.implements Lccsancom/mbridge/msdk/foundation/download/utils/ILogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;->getLogger()Lccsancom/mbridge/msdk/foundation/download/utils/ILogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent$2;->this$0:Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 144
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 139
    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method
