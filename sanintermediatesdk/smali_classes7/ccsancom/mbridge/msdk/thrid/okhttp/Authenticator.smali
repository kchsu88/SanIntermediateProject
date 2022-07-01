.class public interface abstract Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;
.super Ljava/lang/Object;
.source "Authenticator.java"


# static fields
.field public static final NONE:Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 100
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator$1;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator$1;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;->NONE:Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;

    return-void
.end method


# virtual methods
.method public abstract authenticate(Lccsancom/mbridge/msdk/thrid/okhttp/Route;Lccsancom/mbridge/msdk/thrid/okhttp/Response;)Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    .param p1    # Lccsancom/mbridge/msdk/thrid/okhttp/Route;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
