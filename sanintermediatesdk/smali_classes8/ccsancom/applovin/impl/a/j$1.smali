.class Lccsancom/applovin/impl/a/j$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/a/j;->a(Lccsancom/applovin/impl/a/j$a;)Lccsancom/applovin/impl/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lccsancom/applovin/impl/a/k;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/a/j;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/a/j;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/a/j$1;->a:Lccsancom/applovin/impl/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lccsancom/applovin/impl/a/k;Lccsancom/applovin/impl/a/k;)I
    .locals 0

    invoke-virtual {p1}, Lccsancom/applovin/impl/a/k;->d()I

    move-result p1

    invoke-virtual {p2}, Lccsancom/applovin/impl/a/k;->d()I

    move-result p2

    invoke-static {p1, p2}, Lccsanandroidx/constraintlayout/motion/widget/KeyCycleOscillator$1$$ExternalSyntheticBackport0;->m(II)I

    move-result p1

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lccsancom/applovin/impl/a/k;

    check-cast p2, Lccsancom/applovin/impl/a/k;

    invoke-virtual {p0, p1, p2}, Lccsancom/applovin/impl/a/j$1;->a(Lccsancom/applovin/impl/a/k;Lccsancom/applovin/impl/a/k;)I

    move-result p1

    return p1
.end method
