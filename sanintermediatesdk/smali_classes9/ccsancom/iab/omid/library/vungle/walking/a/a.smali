.class public abstract Lccsancom/iab/omid/library/vungle/walking/a/a;
.super Lccsancom/iab/omid/library/vungle/walking/a/b;


# instance fields
.field protected final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final b:Lccsanorg/json/JSONObject;

.field protected final c:J


# direct methods
.method public constructor <init>(Lccsancom/iab/omid/library/vungle/walking/a/b$b;Ljava/util/HashSet;Lccsanorg/json/JSONObject;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/iab/omid/library/vungle/walking/a/b$b;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Lccsanorg/json/JSONObject;",
            "J)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lccsancom/iab/omid/library/vungle/walking/a/b;-><init>(Lccsancom/iab/omid/library/vungle/walking/a/b$b;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lccsancom/iab/omid/library/vungle/walking/a/a;->a:Ljava/util/HashSet;

    iput-object p3, p0, Lccsancom/iab/omid/library/vungle/walking/a/a;->b:Lccsanorg/json/JSONObject;

    iput-wide p4, p0, Lccsancom/iab/omid/library/vungle/walking/a/a;->c:J

    return-void
.end method
