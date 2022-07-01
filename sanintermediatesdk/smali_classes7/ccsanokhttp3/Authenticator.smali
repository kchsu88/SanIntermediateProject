.class public interface abstract Lccsanokhttp3/Authenticator;
.super Ljava/lang/Object;
.source "Authenticator.java"


# static fields
.field public static final NONE:Lccsanokhttp3/Authenticator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 100
    sget-object v0, Lccsanokhttp3/Authenticator$$ExternalSyntheticLambda0;->INSTANCE:Lccsanokhttp3/Authenticator$$ExternalSyntheticLambda0;

    sput-object v0, Lccsanokhttp3/Authenticator;->NONE:Lccsanokhttp3/Authenticator;

    return-void
.end method


# virtual methods
.method public abstract authenticate(Lccsanokhttp3/Route;Lccsanokhttp3/Response;)Lccsanokhttp3/Request;
    .param p1    # Lccsanokhttp3/Route;
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
