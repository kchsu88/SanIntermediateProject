.class Lccsancom/google/gson/internal/bind/TypeAdapters$26;
.super Ljava/lang/Object;
.source "TypeAdapters.java"

# interfaces
.implements Lccsancom/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lccsancom/google/gson/Gson;Lccsancom/google/gson/reflect/TypeToken;)Lccsancom/google/gson/TypeAdapter;
    .locals 2
    .param p1, "gson"    # Lccsancom/google/gson/Gson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/gson/Gson;",
            "Lccsancom/google/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lccsancom/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 575
    .local p2, "typeToken":Lccsancom/google/gson/reflect/TypeToken;, "Lccsancom/google/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p2}, Lccsancom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/sql/Timestamp;

    if-eq v0, v1, :cond_0

    .line 576
    const/4 v0, 0x0

    return-object v0

    .line 579
    :cond_0
    const-class v0, Ljava/util/Date;

    invoke-virtual {p1, v0}, Lccsancom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lccsancom/google/gson/TypeAdapter;

    move-result-object v0

    .line 580
    .local v0, "dateTypeAdapter":Lccsancom/google/gson/TypeAdapter;, "Lccsancom/google/gson/TypeAdapter<Ljava/util/Date;>;"
    new-instance v1, Lccsancom/google/gson/internal/bind/TypeAdapters$26$1;

    invoke-direct {v1, p0, v0}, Lccsancom/google/gson/internal/bind/TypeAdapters$26$1;-><init>(Lccsancom/google/gson/internal/bind/TypeAdapters$26;Lccsancom/google/gson/TypeAdapter;)V

    return-object v1
.end method
