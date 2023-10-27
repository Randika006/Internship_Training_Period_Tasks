<ul>
    @foreach($childs as $child)
        <li>
            {{ $child->title }}
        @if(count($child->childs))
                @include('blog::manageChild2',['childs' => $child->childs])
            @endif
        </li>
    @endforeach
    </ul>
