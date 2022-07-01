.class final Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator$1;
.super Ljava/lang/Object;
.source "Authenticator.java"

# interfaces
.implements Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticate(Lccsancom/mbridge/msdk/thrid/okhttp/Route;Lccsancom/mbridge/msdk/thrid/okhttp/Response;)Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    .locals 1
    .param p1, "route"    # Lccsancom/mbridge/msdk/thrid/okhttp/Route;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "response"    # Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    .line 102
    const/4 v0, 0x0

    return-object v0
.end method
