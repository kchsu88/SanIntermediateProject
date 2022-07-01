.class public final synthetic Lccsanokhttp3/EventListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lccsanokhttp3/EventListener$Factory;


# instance fields
.field public final synthetic f$0:Lccsanokhttp3/EventListener;


# direct methods
.method public synthetic constructor <init>(Lccsanokhttp3/EventListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsanokhttp3/EventListener$$ExternalSyntheticLambda0;->f$0:Lccsanokhttp3/EventListener;

    return-void
.end method


# virtual methods
.method public final create(Lccsanokhttp3/Call;)Lccsanokhttp3/EventListener;
    .locals 1

    iget-object v0, p0, Lccsanokhttp3/EventListener$$ExternalSyntheticLambda0;->f$0:Lccsanokhttp3/EventListener;

    invoke-static {v0, p1}, Lccsanokhttp3/EventListener;->lambda$factory$0(Lccsanokhttp3/EventListener;Lccsanokhttp3/Call;)Lccsanokhttp3/EventListener;

    move-result-object p1

    return-object p1
.end method
