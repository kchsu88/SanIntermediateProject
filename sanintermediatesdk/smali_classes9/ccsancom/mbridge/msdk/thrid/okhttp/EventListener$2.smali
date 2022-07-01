.class final Lccsancom/mbridge/msdk/thrid/okhttp/EventListener$2;
.super Ljava/lang/Object;
.source "EventListener.java"

# interfaces
.implements Lccsancom/mbridge/msdk/thrid/okhttp/EventListener$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;->factory(Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;)Lccsancom/mbridge/msdk/thrid/okhttp/EventListener$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/EventListener$2;->val$listener:Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lccsancom/mbridge/msdk/thrid/okhttp/Call;)Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;
    .locals 1
    .param p1, "call"    # Lccsancom/mbridge/msdk/thrid/okhttp/Call;

    .line 59
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/EventListener$2;->val$listener:Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;

    return-object v0
.end method
