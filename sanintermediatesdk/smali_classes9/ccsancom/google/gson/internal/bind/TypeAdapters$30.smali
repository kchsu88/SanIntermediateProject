.class Lccsancom/google/gson/internal/bind/TypeAdapters$30;
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

    .line 808
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

    .line 811
    .local p2, "typeToken":Lccsancom/google/gson/reflect/TypeToken;, "Lccsancom/google/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p2}, Lccsancom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 812
    .local v0, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    const-class v1, Ljava/lang/Enum;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-class v1, Ljava/lang/Enum;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 815
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-nez v1, :cond_1

    .line 816
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 818
    :cond_1
    new-instance v1, Lccsancom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;

    invoke-direct {v1, v0}, Lccsancom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;-><init>(Ljava/lang/Class;)V

    return-object v1

    .line 813
    :cond_2
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method
