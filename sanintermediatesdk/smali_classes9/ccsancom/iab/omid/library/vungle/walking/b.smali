.class public Lccsancom/iab/omid/library/vungle/walking/b;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/iab/omid/library/vungle/walking/a/b$b;


# instance fields
.field private a:Lccsanorg/json/JSONObject;

.field private final b:Lccsancom/iab/omid/library/vungle/walking/a/c;


# direct methods
.method public constructor <init>(Lccsancom/iab/omid/library/vungle/walking/a/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/iab/omid/library/vungle/walking/b;->b:Lccsancom/iab/omid/library/vungle/walking/a/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/walking/b;->b:Lccsancom/iab/omid/library/vungle/walking/a/c;

    new-instance v1, Lccsancom/iab/omid/library/vungle/walking/a/d;

    invoke-direct {v1, p0}, Lccsancom/iab/omid/library/vungle/walking/a/d;-><init>(Lccsancom/iab/omid/library/vungle/walking/a/b$b;)V

    invoke-virtual {v0, v1}, Lccsancom/iab/omid/library/vungle/walking/a/c;->b(Lccsancom/iab/omid/library/vungle/walking/a/b;)V

    return-void
.end method

.method public a(Lccsanorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lccsancom/iab/omid/library/vungle/walking/b;->a:Lccsanorg/json/JSONObject;

    return-void
.end method

.method public a(Lccsanorg/json/JSONObject;Ljava/util/HashSet;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanorg/json/JSONObject;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/walking/b;->b:Lccsancom/iab/omid/library/vungle/walking/a/c;

    new-instance v7, Lccsancom/iab/omid/library/vungle/walking/a/f;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lccsancom/iab/omid/library/vungle/walking/a/f;-><init>(Lccsancom/iab/omid/library/vungle/walking/a/b$b;Ljava/util/HashSet;Lccsanorg/json/JSONObject;J)V

    invoke-virtual {v0, v7}, Lccsancom/iab/omid/library/vungle/walking/a/c;->b(Lccsancom/iab/omid/library/vungle/walking/a/b;)V

    return-void
.end method

.method public b()Lccsanorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/walking/b;->a:Lccsanorg/json/JSONObject;

    return-object v0
.end method

.method public b(Lccsanorg/json/JSONObject;Ljava/util/HashSet;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanorg/json/JSONObject;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/walking/b;->b:Lccsancom/iab/omid/library/vungle/walking/a/c;

    new-instance v7, Lccsancom/iab/omid/library/vungle/walking/a/e;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lccsancom/iab/omid/library/vungle/walking/a/e;-><init>(Lccsancom/iab/omid/library/vungle/walking/a/b$b;Ljava/util/HashSet;Lccsanorg/json/JSONObject;J)V

    invoke-virtual {v0, v7}, Lccsancom/iab/omid/library/vungle/walking/a/c;->b(Lccsancom/iab/omid/library/vungle/walking/a/b;)V

    return-void
.end method
