.class public Lccsanandroidx/core/net/ParseException;
.super Ljava/lang/RuntimeException;
.source "ParseException.java"


# instance fields
.field public final response:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "response"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lccsanandroidx/core/net/ParseException;->response:Ljava/lang/String;

    .line 31
    return-void
.end method