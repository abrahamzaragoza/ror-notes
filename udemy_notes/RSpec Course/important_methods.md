**includes**

```
expect(subject).to include 'olat'
```

**respond_to**

```
expect(subject).to respond_to(:purchase).with(1).arguments
```

**satisfy**

```
expect(subject).to satisfy { |value| value == value.reverse }
```

**change**

```
expect { subject.push(4) }.to change { subject.length }
```

**be_truthy, be_falsy, be_nil**

```
expect('hello').to be_truthy
expect(false).to be_falsy
expect(nil).to be_nil
```
